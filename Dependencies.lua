IncludeDir = {}
IncludeDir["raylib"] = "%{wks.location}/vendor/raylib/include"

LibraryDir = {}
LibraryDir["raylib"] = "%{wks.location}/vendor/raylib/lib"

Library = {}
Library["raylib"] = "%{LibraryDir.raylib}/raylib.lib"
Library["raylibdll"] = "%{LibraryDir.raylib}/raylibdll.lib"
