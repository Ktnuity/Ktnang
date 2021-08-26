include "./vendor/premake/premake_customization/solution_items.lua"
include "Dependencies.lua"

workspace "Ktnang"
    architecture "x64"
    startproject "KtnangCLI"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

    solution_items
    {
    }

    flags
    {
        "MultiProcessorCompile"
    }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
    include "vendor/premake"
group ""

include "Ktnang"
include "KtnangCLI"

