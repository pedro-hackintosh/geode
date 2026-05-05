// Geode.dll - Minimal proxy to Geomoded.dll
#include <windows.h>

HMODULE g_hGeomoded = nullptr;

BOOL WINAPI DllMain(HINSTANCE h, DWORD reason, LPVOID) {
    if (reason == DLL_PROCESS_ATTACH) {
        g_hGeomoded = LoadLibraryW(L"Geomoded.dll");
    } else if (reason == DLL_PROCESS_DETACH && g_hGeomoded) {
        FreeLibrary(g_hGeomoded);
    }
    return TRUE;
}

// Entry point that forwards to Geomoded
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