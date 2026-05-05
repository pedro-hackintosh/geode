// Geode.dll - Proxy/Wrapper that forwards to Geomoded.dll
// This allows mods that depend on "Geode.dll" to work with "Geomoded.dll"

#include <windows.h>

static HMODULE g_hGeomoded = nullptr;

BOOL WINAPI DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved) {
    if (fdwReason == DLL_PROCESS_ATTACH) {
        DisableThreadLibraryCalls(hinstDLL);
        
        // Try to load Geomoded.dll
        g_hGeomoded = LoadLibraryW(L"Geomoded.dll");
        if (!g_hGeomoded) {
            // Try alternative paths
            g_hGeomoded = LoadLibraryW(L".\\Geomoded.dll");
            if (!g_hGeomoded) {
                g_hGeomoded = LoadLibraryW(L".\\bin\\Geomoded.dll");
            }
        }
    }
    else if (fdwReason == DLL_PROCESS_DETACH) {
        if (g_hGeomoded) {
            FreeLibrary(g_hGeomoded);
            g_hGeomoded = nullptr;
        }
    }
    return TRUE;
}

// Forward all exported functions from Geomoded.dll
// This uses delay loading approach - will resolve on first call

extern "C" {

// Main loader entry point
__declspec(dllexport) int geode_loader_main() {
    if (!g_hGeomoded) return 0;
    auto func = (int(*)())GetProcAddress(g_hGeomoded, "geode_loader_main");
    return func ? func() : 0;
}

// Other common exports - mods can add more here
__declspec(dllexport) const char* getGeodeVersion() {
    if (!g_hGeomoded) return "0.0.0";
    auto func = (const char*(*)())GetProcAddress(g_hGeomoded, "getGeodeVersion");
    return func ? func() : "0.0.0";
}

__declspec(dllexport) void* getModList() {
    if (!g_hGeomoded) return nullptr;
    auto func = (void*(*)())GetProcAddress(g_hGeomoded, "getModList");
    return func ? func() : nullptr;
}

__declspec(dllexport) void* loadMod(const char* modId) {
    if (!g_hGeomoded) return nullptr;
    auto func = (void*(*)(const char*))GetProcAddress(g_hGeomoded, "loadMod");
    return func ? func(modId) : nullptr;
}

__declspec(dllexport) bool unloadMod(const char* modId) {
    if (!g_hGeomoded) return false;
    auto func = (bool(*)(const char*))GetProcAddress(g_hGeomoded, "unloadMod");
    return func ? func(modId) : false;
}

__declspec(dllexport) const char* getGeodeBinaryName() {
    return "Geode.dll";
}

}