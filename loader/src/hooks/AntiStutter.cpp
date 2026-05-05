#include <Geode/modify/CCDirector.hpp>
#include <Geode/modify/GJBaseGameLayer.hpp>
#include <Geode/loader/Log.hpp>
#include "utils/AntiStutterManager.hpp"

using namespace geode::prelude;

struct AntiStutterCCDirectorHook : Modify<AntiStutterCCDirectorHook, cocos2d::CCDirector> {
    void update(float dt) {
        AntiStutterManager::get().update(dt);
        CCDirector::update(dt);
    }
};

struct AntiStutterGJBaseGameLayerHook : Modify<AntiStutterGJBaseGameLayerHook, GJBaseGameLayer> {
    void handlePlayerDeath(bool force) {
        if (AntiStutterManager::get().isInSafeWindow()) {
            log::debug("AntiStutter: Blocking death during safe window");
            return;
        }
        GJBaseGameLayer::handlePlayerDeath(force);
    }
};