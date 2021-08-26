project "KtnangCLI"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp"
    }

    includedirs
    {
        "%{wks.location}/Ktnang/src",
        "src"
    }

    links
    {
        "Ktnang"
    }

    filter "system:windows"
        systemversion "latest"

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