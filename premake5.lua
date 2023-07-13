workspace "RaylibGame"
    architecture "x64"
    configurations { "Debug", "Release", "Dist" }
    startproject "RaylibGame"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "Dependencies.lua"
include "RaylibGame"