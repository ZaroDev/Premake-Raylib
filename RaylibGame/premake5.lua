project "RaylibGame"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    targetdir "bin/%{cfg.buildcfg}"
    staticruntime "off"

    files { "src/**.h", "src/**.cpp" }
    
    includedirs
    {
      "src",
      "%{IncludeDir.raylib}"
    }
   
    links
    {
      "%{Library.raylib}",
      "winmm.lib",
      "kernel32.lib",
      "user32.lib",
      "gdi32.lib",
      "winspool.lib",
      "comdlg32.lib",
      "advapi32.lib",
      "shell32.lib",
      "ole32.lib",
      "oleaut32.lib",
      "uuid.lib",
      "odbc32.lib",
      "odbccp32.lib"
    }
    targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
    objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")
    debugdir "%{wks.location}/Game"
    
    filter "system:windows"
      systemversion "latest"
      defines { "RL_PLATFORM_WINDOWS" }

   filter "configurations:Debug"
      defines { "RL_DEBUG" }
      runtime "Debug"
      symbols "On"

   filter "configurations:Release"
      defines { "RL_RELEASE" }
      runtime "Release"
      optimize "On"
      symbols "On"

   filter "configurations:Dist"
      kind "WindowedApp"
      defines { "RL_DIST" }
      runtime "Release"
      optimize "On"
      symbols "Off"