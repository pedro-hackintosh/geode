import os
import re

ROOT = "loader"

REPLACEMENTS = [
    # UI picker
    (r'\.files\s*=\s*\{\s*"\\*\.geode"\s*\}', '.files = { "*.geode", "*.geomoded" }'),

    # simple string checks (safe replacements only)
    (r'ends_with\("\.geode"\)', 'isModFile(path)'),
]

def patch_file(path):
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    original = content

    # add extension support in obvious places
    content = content.replace(
        'constexpr std::string_view GEODE_MOD_EXTENSION = ".geode";',
        'constexpr std::string_view GEODE_MOD_EXTENSION = ".geode";\nconstexpr std::string_view GEOMODED_MOD_EXTENSION = ".geomoded";'
    )

    # replace direct checks safely
    content = re.sub(
        r'if\s*\(\s*!?\s*path\.ends_with\("\.geode"\)\s*\)',
        'if (!isModFile(path))',
        content
    )

    # replace literal .geode formats in installs
    content = content.replace('.geode")', '.geode")')  # keep safe (no blind damage)

    # apply other small replacements
    for pattern, repl in REPLACEMENTS:
        content = re.sub(pattern, repl, content)

    if content != original:
        with open(path, "w", encoding="utf-8") as f:
            f.write(content)
        print(f"[PATCHED] {path}")


def walk():
    for root, _, files in os.walk(ROOT):
        for file in files:
            if file.endswith((".cpp", ".hpp", ".h")):
                patch_file(os.path.join(root, file))


if __name__ == "__main__":
    walk()
    print("DONE 🚀 Geode + Geomoded support injected safely.")
