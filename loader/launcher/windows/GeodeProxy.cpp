// Geode.dll - Robust proxy to Geomoded.dll
#include <windows.h>

static HMODULE g_hGeomoded = nullptr;

BOOL WINAPI DllMain(HINSTANCE h, DWORD reason, LPVOID) {
    if (reason == DLL_PROCESS_ATTACH) {
        // Try multiple paths
        g_hGeomoded = LoadLibraryW(L"Geomoded.dll");
        if (!g_hGeomoded) g_hGeomoded = LoadLibraryW(L"./Geomoded.dll");
        if (!g_hGeomoded) g_hGeomoded = LoadLibraryW(L"bin/Geomoded.dll");
        if (!g_hGeomoded) g_hGeomoded = LoadLibraryW(L"../Geomoded.dll");
    } else if (reason == DLL_PROCESS_DETACH) {
        if (g_hGeomoded) FreeLibrary(g_hGeomoded);
        g_hGeomoded = nullptr;
    }
    return TRUE;
}

// Helper macro for safe function forwarding
#define FORWARD_FUNC(retType, name, ...) \
    extern "C" __declspec(dllexport) retType name(__VA_ARGS__) { \
        if (!g_hGeomoded) return retType(); \
        auto fn = (retType(*)(__VA_ARGS__))GetProcAddress(g_hGeomoded, #name); \
        return fn ? fn(__VA_ARGS__) : retType(); \
    }

// Common loader functions
FORWARD_FUNC(int, geode_loader_main)
FORWARD_FUNC(const char*, getGeodeVersion)
FORWARD_FUNC(const char*, getGeodeBinaryName)
FORWARD_FUNC(void*, getModList)
FORWARD_FUNC(void*, loadMod, const char*)
FORWARD_FUNC(bool, unloadMod, const char*)

FORWARD_FUNC(void*, getLoadedMods)
FORWARD_FUNC(void*, getAllMods)
FORWARD_FUNC(bool, isModLoaded, const char*)
FORWARD_FUNC(void*, getMod, const char*)
FORWARD_FUNC(int, getModCount)