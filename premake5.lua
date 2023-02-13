project "spdlog"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"
    staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "include/**.h",
        "src/**.cpp"
    }

    includedirs {
        "include/**.h"
    }

	defines {
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "system:windows"
        systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

    filter "configurations:Release"
		runtime "Release"
		optimize "on"
