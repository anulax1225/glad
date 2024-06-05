project "GLAD"
	kind "StaticLib"
	language "C"
	systemversion "latest"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs { "%{prj.location}/include" }

	buildoptions { "-fPIC" }

	files
	{
		"%{prj.location}/src/glad.c",
		"%{prj.location}/include/KHR/khrplatform.h",
		"%{prj.location}/include/glad.h"
	}

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"