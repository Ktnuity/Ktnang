project "Ktnang"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    pchheader "ktnpch.h"
    pchsource "src/ktnpch.cpp"

    files
    {
        "src/**.h",
        "src/**.cpp"
    }

    defines
    {
    }

    includedirs
    {
        "src"
    }

    filter "system:windows"
        systemversion "latest"

        defines
        {
        }

    filter "configurations:Debug"
        defines "KTN_DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "KTN_RELEASE"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        defines "KTN_DIST"
        runtime "Release"
        optimize "on"