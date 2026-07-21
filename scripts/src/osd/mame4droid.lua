
--dofile("modules.lua")


function maintargetosdoptions(_target, _subtarget)
end


links {
	"OpenSLES"
}


project ("osd_" .. _OPTIONS["osd"])
	targetsubdir(_OPTIONS["target"] .."_" .._OPTIONS["subtarget"])
	uuid (os.uuid("osd_" .. _OPTIONS["osd"]))
	kind (LIBTYPE)

	--osdmodulesbuild()

	includedirs {
		MAME_DIR .. "src",
		MAME_DIR .. "src/emu",
		MAME_DIR .. "src/emu/ui",
		MAME_DIR .. "src/frontend/mame",
		MAME_DIR .. "src/devices", -- accessing imagedev from debugger
		MAME_DIR .. "src/osd",
		MAME_DIR .. "src/lib",
		MAME_DIR .. "src/lib/util",
		MAME_DIR .. "3rdparty",
		--MAME_DIR .. "src/osd/modules/file",
		--MAME_DIR .. "src/osd/modules/render",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd"
	}

	files {
		MAME_DIR .. "src/osd/interface/audio.cpp",
		MAME_DIR .. "src/osd/interface/audio.h",
		MAME_DIR .. "src/osd/interface/inputcode.h",
		MAME_DIR .. "src/osd/interface/inputdev.h",
		MAME_DIR .. "src/osd/interface/inputfwd.h",
		MAME_DIR .. "src/osd/interface/inputman.h",
		MAME_DIR .. "src/osd/interface/inputseq.cpp",
		MAME_DIR .. "src/osd/interface/inputseq.h",
		MAME_DIR .. "src/osd/interface/midiport.h",
		MAME_DIR .. "src/osd/interface/nethandler.cpp",
		MAME_DIR .. "src/osd/interface/nethandler.h",
		MAME_DIR .. "src/osd/interface/uievents.h",

		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/droid/opensl_snd.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/droid/osdlib.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/droid/myosd_droid.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/droid/droid_font.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/myosdopts.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/file/posixfile.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/file/posixptty.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/file/posixdir.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/file/posixsocket.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/modules/input_myosd.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/modules/drawmyosd.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/modules/monitor_myosd.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/modules/myosd_sound.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/modules/font_myosd.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/renderer/gles3_renderer.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/renderer/gles1_renderer.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/renderer/filter_shader.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/window.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/video.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/netplay/skt_netplay.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/netplay/myosd_netplay.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/netplay/netplay.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/input.cpp",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/myosdmain.cpp"

		--MAME_DIR .. "MAME4droid/src/osd/myosd/mame4droid-jni.cpp"
	}

	links {
		"OpenSLES", "log"
	}

project ("ocore_" .. _OPTIONS["osd"])
	targetsubdir(_OPTIONS["target"] .."_" .. _OPTIONS["subtarget"])
	uuid (os.uuid("ocore_" .. _OPTIONS["osd"]))
	kind (LIBTYPE)

	removeflags {
		"SingleOutputDir",
	}


	includedirs {
		MAME_DIR .. "src/emu",
		MAME_DIR .. "src/osd",
		MAME_DIR .. "src/lib",
		MAME_DIR .. "src/lib/util",
		MAME_DIR .. "src/osd/myosd",
	}

	files {
		MAME_DIR .. "src/osd/osdcore.cpp",
		MAME_DIR .. "src/osd/osdcore.h",
		MAME_DIR .. "src/osd/osdfile.h",
		MAME_DIR .. "src/osd/strconv.cpp",
		MAME_DIR .. "src/osd/strconv.h",
		MAME_DIR .. "src/osd/osdsync.cpp",
		MAME_DIR .. "src/osd/osdsync.h",
		MAME_DIR .. "src/osd/modules/osdmodule.cpp",
		MAME_DIR .. "src/osd/modules/osdmodule.h",
		--MAME_DIR .. "src/osd/modules/lib/osdlib_" .. SDLOS_TARGETOS .. ".cpp",
		--MAME_DIR .. "src/osd/modules/lib/osdlib.h"
	}
