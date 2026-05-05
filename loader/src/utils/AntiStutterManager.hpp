#pragma once

#include <deque>
#include <cocos2d.h>

class AntiStutterManager {
public:
    static AntiStutterManager& get() {
        static AntiStutterManager instance;
        return instance;
    }

    void update(float dt);
    bool isLagSpike() const;
    bool isInSafeWindow() const;

    void setFpsCap(int fps);
    int getFpsCap() const;
    void setSpikeMultiplier(float multiplier);
    float getSpikeMultiplier() const;
    void setSafeWindowDuration(float duration);
    float getSafeWindowDuration() const;

    void preloadCommonAssets();

    bool shouldAllowDeath() const;

private:
    AntiStutterManager() = default;

    std::deque<float> frameTimes;
    float averageFrameTime = 0.0f;

    bool lagSpikeDetected = false;
    float safeWindowTimer = 0.0f;

    static constexpr size_t FRAME_SAMPLES = 30;

    int fpsCap = 60;
    float spikeMultiplier = 2.5f;
    float safeWindowDuration = 0.075f;

    cocos2d::CCArray* preloadedAssets = nullptr;
};