#include "utils/AntiStutterManager.hpp"
#include <Geode/loader/Mod.hpp>
#include <Geode/loader/Log.hpp>

using namespace geode::prelude;

void AntiStutterManager::update(float dt) {
    if (dt <= 0.0f || dt > 1.0f) {
        return;
    }

    frameTimes.push_back(dt);
    if (frameTimes.size() > FRAME_SAMPLES) {
        frameTimes.pop_front();
    }

    if (frameTimes.empty()) {
        averageFrameTime = dt;
    } else {
        float sum = 0.0f;
        for (float t : frameTimes) {
            sum += t;
        }
        averageFrameTime = sum / static_cast<float>(frameTimes.size());
    }

    if (lagSpikeDetected) {
        safeWindowTimer -= dt;
        if (safeWindowTimer <= 0.0f) {
            lagSpikeDetected = false;
            safeWindowTimer = 0.0f;
        }
    } else if (frameTimes.size() >= 5) {
        if (dt > averageFrameTime * spikeMultiplier) {
            lagSpikeDetected = true;
            safeWindowTimer = safeWindowDuration;
            log::debug("AntiStutter: Lag spike detected! dt={:.3f}, avg={:.3f}", dt, averageFrameTime);
        }
    }
}

bool AntiStutterManager::isLagSpike() const {
    return lagSpikeDetected;
}

bool AntiStutterManager::isInSafeWindow() const {
    return lagSpikeDetected && safeWindowTimer > 0.0f;
}

void AntiStutterManager::setFpsCap(int fps) {
    fpsCap = (fps > 0) ? ((fps < 500) ? fps : 60) : 0;
}

int AntiStutterManager::getFpsCap() const {
    return fpsCap;
}

void AntiStutterManager::setSpikeMultiplier(float multiplier) {
    spikeMultiplier = (multiplier > 1.0f) ? ((multiplier < 10.0f) ? multiplier : 2.5f) : 2.5f;
}

float AntiStutterManager::getSpikeMultiplier() const {
    return spikeMultiplier;
}

void AntiStutterManager::setSafeWindowDuration(float duration) {
    safeWindowDuration = (duration > 0.0f) ? ((duration < 1.0f) ? duration : 0.075f) : 0.075f;
}

float AntiStutterManager::getSafeWindowDuration() const {
    return safeWindowDuration;
}

void AntiStutterManager::preloadCommonAssets() {
    if (preloadedAssets != nullptr) {
        return;
    }

    preloadedAssets = cocos2d::CCArray::create();

    log::debug("AntiStutter: Preloading common assets");
}

bool AntiStutterManager::shouldAllowDeath() const {
    return !isInSafeWindow();
}

void AntiStutterManager::pushJumpInput() {
    if (isLagSpike() || isInSafeWindow()) {
        jumpInputBufferTimer = inputBufferDuration;
    }
}

bool AntiStutterManager::consumeJumpInput() {
    if (jumpInputBufferTimer > 0.0f) {
        jumpInputBufferTimer = 0.0f;
        return true;
    }
    return false;
}

void AntiStutterManager::setInputBufferDuration(float duration) {
    inputBufferDuration = (duration > 0.0f && duration < 0.2f) ? duration : 0.05f;
}

float AntiStutterManager::getInputBufferDuration() const {
    return inputBufferDuration;
}

void AntiStutterManager::setFrameSkipCompensation(bool enabled) {
    frameSkipCompensationEnabled = enabled;
}

bool AntiStutterManager::isFrameSkipCompensationEnabled() const {
    return frameSkipCompensationEnabled;
}

float AntiStutterManager::getClampedDeltaTime(float dt) const {
    if (!frameSkipCompensationEnabled) {
        return dt;
    }

    float maxDt = 1.0f / 30.0f;
    if (dt > maxDt) {
        float smoothedDt = (previousDeltaTime + dt) * 0.5f;
        previousDeltaTime = smoothedDt;
        return smoothedDt;
    }

    previousDeltaTime = dt;
    return dt;
}