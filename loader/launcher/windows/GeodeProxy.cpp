// Geode.dll - Robust proxy to Geomoded.dll
#include <windows.h>

static HMODULE g_hGeomoded = nullptr;

BOOL WINAPI DllMain(HINSTANCE h, DWORD reason, LPVOID) {
    if (reason == DLL_PROCESS_ATTACH) {
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

// Forward functions manually
extern "C" __declspec(dllexport) int geode_loader_main() {
    if (!g_hGeomoded) return 0;
    auto fn = (int(*)())GetProcAddress(g_hGeomoded, "geode_loader_main");
    return fn ? fn() : 0;
}

extern "C" __declspec(dllexport) const char* getGeodeVersion() {
    if (!g_hGeomoded) return "0.0";
    auto fn = (const char*(*)())GetProcAddress(g_hGeomoded, "getGeodeVersion");
    return fn ? fn() : "0.0";
}

extern "C" __declspec(dllexport) const char* getGeodeBinaryName() {
    return "Geode.dll";
}

extern "C" __declspec(dllexport) void* getModList() {
    if (!g_hGeomoded) return nullptr;
    auto fn = (void*(*)())GetProcAddress(g_hGeomoded, "getModList");
    return fn ? fn() : nullptr;
}

extern "C" __declspec(dllexport) void* loadMod(const char* id) {
    if (!g_hGeomoded) return nullptr;
    auto fn = (void*(*)(const char*))GetProcAddress(g_hGeomoded, "loadMod");
    return fn ? fn(id) : nullptr;
}

extern "C" __declspec(dllexport) bool unloadMod(const char* id) {
    if (!g_hGeomoded) return false;
    auto fn = (bool(*)(const char*))GetProcAddress(g_hGeomoded, "unloadMod");
    return fn ? fn(id) : false;
}

extern "C" __declspec(dllexport) void* getLoadedMods() {
    if (!g_hGeomoded) return nullptr;
    auto fn = (void*(*)())GetProcAddress(g_hGeomoded, "getLoadedMods");
    return fn ? fn() : nullptr;
}

extern "C" __declspec(dllexport) void* getAllMods() {
    if (!g_hGeomoded) return nullptr;
    auto fn = (void*(*)())GetProcAddress(g_hGeomoded, "getAllMods");
    return fn ? fn() : nullptr;
}

extern "C" __declspec(dllexport) bool isModLoaded(const char* id) {
    if (!g_hGeomoded) return false;
    auto fn = (bool(*)(const char*))GetProcAddress(g_hGeomoded, "isModLoaded");
    return fn ? fn(id) : false;
}

extern "C" __declspec(dllexport) void* getMod(const char* id) {
    if (!g_hGeomoded) return nullptr;
    auto fn = (void*(*)(const char*))GetProcAddress(g_hGeomoded, "getMod");
    return fn ? fn(id) : nullptr;
}

extern "C" __declspec(dllexport) int getModCount() {
    if (!g_hGeomoded) return 0;
    auto fn = (int(*)())GetProcAddress(g_hGeomoded, "getModCount");
    return fn ? fn() : 0;
}