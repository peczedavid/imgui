project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "On"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_tables.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imgui_rectpack.h",
		"imgui_textedit.h",
		"imgui_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
       
		defines 
		{ 
			"_GLFW_WIN32",
			"_CRT_SECURE_NO_WARNINGS",
            "IMGUI_API=__declspec(dllexport)" 
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
