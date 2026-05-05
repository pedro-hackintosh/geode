#include <Geode/modify/CCDirector.hpp>
#include <Geode/modify/PlayerObject.hpp>
#include <Geode/loader/Log.hpp>
#include "utils/AntiStutterManager.hpp"

using namespace geode::prelude;

struct AntiStutterCCDirectorHook : Modify<AntiStutterCCDirectorHook, cocos2d::CCDirector> {
    void update(float dt) {
        AntiStutterManager::get().update(dt);
        CCDirector::update(dt);
    }
};

struct AntiStutterPlayerObjectHook : Modify<AntiStutterPlayerObjectHook, PlayerObject> {
    void die() {
        if (AntiStutterManager::get().isInSafeWindow()) {
            log::debug("AntiStutter: Blocking death during safe window");
            return;
        }
        PlayerObject::die();
    }
};