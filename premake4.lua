project "portaudio_lib"
	kind "StaticLib"
	language "C++"
	defines { "PA_USE_WMME=0", "PA_USE_WASAPI=1", "PA_USE_DS=1", "PA_USE_WDMKS=1" }
	files { "./include/**.h", 
	        "./src/common/**.c",
	        -- "./src/hostapi/asio/**.c",
	        "./src/hostapi/dsound/**.c",
	        "./src/hostapi/wasapi/**.c",
	        "./src/hostapi/wdmks/**.c",
	        --"./src/hostapi/wmme/**.c",
	        "./src/os/win/**.c"
	      }
	includedirs { "./include",
	              "./src/common",
	              "./src/hostapi/dsound",
	              "./src/hostapi/wasapi",
	              --"./src/hostapi/wmme",
			      "./src/hostapi/wdmks/**.c",
	              "./src/os/win"
	            }
