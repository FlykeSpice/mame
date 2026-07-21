
--dofile("modules.lua")


function maintargetosdoptions(_target, _subtarget)
end


links {
	"OpenSLES"
}

function mame4droid_osdmodules()
	files {
		MAME_DIR .. "src/osd/watchdog.cpp",
		MAME_DIR .. "src/osd/watchdog.h",
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
		MAME_DIR .. "src/osd/interface/output.h",
		MAME_DIR .. "src/osd/interface/uievents.h",

		MAME_DIR .. "src/osd/modules/debugger/debug_module.h",
		--MAME_DIR .. "src/osd/modules/debugger/debuggdbstub.cpp",
		--MAME_DIR .. "src/osd/modules/debugger/debugimgui.cpp",
		--MAME_DIR .. "src/osd/modules/debugger/debugwin.cpp",
		MAME_DIR .. "src/osd/modules/debugger/none.cpp",
		MAME_DIR .. "src/osd/modules/debugger/xmlconfig.cpp",
		MAME_DIR .. "src/osd/modules/debugger/xmlconfig.h",
		MAME_DIR .. "src/osd/modules/diagnostics/diagnostics_module.h",
		--MAME_DIR .. "src/osd/modules/diagnostics/diagnostics_win32.cpp",
		MAME_DIR .. "src/osd/modules/diagnostics/none.cpp",
		MAME_DIR .. "src/osd/modules/font/font_dwrite.cpp",
		MAME_DIR .. "src/osd/modules/font/font_module.h",
		MAME_DIR .. "src/osd/modules/font/font_none.cpp",
		--MAME_DIR .. "src/osd/modules/font/font_osx.cpp",
		--MAME_DIR .. "src/osd/modules/font/font_sdl.cpp",
		--MAME_DIR .. "src/osd/modules/font/font_sdl3.cpp",
		--MAME_DIR .. "src/osd/modules/font/font_windows.cpp",
		MAME_DIR .. "src/osd/modules/input/assignmenthelper.cpp",
		MAME_DIR .. "src/osd/modules/input/assignmenthelper.h",
		MAME_DIR .. "src/osd/modules/input/input_common.cpp",
		MAME_DIR .. "src/osd/modules/input/input_common.h",
		--MAME_DIR .. "src/osd/modules/input/input_dinput.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_dinput.h",
		--MAME_DIR .. "src/osd/modules/input/input_mac.cpp",
		MAME_DIR .. "src/osd/modules/input/input_module.h",
		MAME_DIR .. "src/osd/modules/input/input_none.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_rawinput.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_sdl.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_sdl3.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_sdlcommon.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_sdlcommon.h",
		--MAME_DIR .. "src/osd/modules/input/input_win32.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_wincommon.h",
		--MAME_DIR .. "src/osd/modules/input/input_windows.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_windows.h",
		--MAME_DIR .. "src/osd/modules/input/input_winhybrid.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_winsdl.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_x11.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_xinput.cpp",
		--MAME_DIR .. "src/osd/modules/input/input_xinput.h",
		MAME_DIR .. "src/osd/modules/lib/osdobj_common.cpp",
		MAME_DIR .. "src/osd/modules/lib/osdobj_common.h",
		MAME_DIR .. "src/osd/modules/midi/midi_module.h",
		MAME_DIR .. "src/osd/modules/midi/none.cpp",
		--MAME_DIR .. "src/osd/modules/midi/portmidi.cpp",
		MAME_DIR .. "src/osd/modules/monitor/monitor_common.cpp",
		MAME_DIR .. "src/osd/modules/monitor/monitor_common.h",
		--MAME_DIR .. "src/osd/modules/monitor/monitor_dxgi.cpp",
		--MAME_DIR .. "src/osd/modules/monitor/monitor_mac.cpp",
		MAME_DIR .. "src/osd/modules/monitor/monitor_module.h",
		--MAME_DIR .. "src/osd/modules/monitor/monitor_sdl.cpp",
		--MAME_DIR .. "src/osd/modules/monitor/monitor_win32.cpp",
		MAME_DIR .. "src/osd/modules/netdev/netdev_common.cpp",
		MAME_DIR .. "src/osd/modules/netdev/netdev_common.h",
		MAME_DIR .. "src/osd/modules/netdev/netdev_module.h",
		MAME_DIR .. "src/osd/modules/netdev/none.cpp",
		--MAME_DIR .. "src/osd/modules/netdev/pcap.cpp",
		--MAME_DIR .. "src/osd/modules/netdev/taptun.cpp",
		MAME_DIR .. "src/osd/modules/output/console.cpp",
		MAME_DIR .. "src/osd/modules/output/network.cpp",
		MAME_DIR .. "src/osd/modules/output/none.cpp",
		MAME_DIR .. "src/osd/modules/output/output_module.h",
		--MAME_DIR .. "src/osd/modules/output/win32_output.cpp",
		--MAME_DIR .. "src/osd/modules/output/win32_output.h",
		--MAME_DIR .. "src/osd/modules/render/blit13.ipp",
		--MAME_DIR .. "src/osd/modules/render/draw13.cpp",
		--MAME_DIR .. "src/osd/modules/render/drawgdi.cpp",
		--MAME_DIR .. "src/osd/modules/render/drawnone.cpp",
		--MAME_DIR .. "src/osd/modules/render/drawogl.cpp",
		--MAME_DIR .. "src/osd/modules/render/drawsdl.cpp",
		--MAME_DIR .. "src/osd/modules/render/drawsdl3accel.cpp",
		--MAME_DIR .. "src/osd/modules/render/drawsdl3soft.cpp",
		MAME_DIR .. "src/osd/modules/render/render_module.h",
		--MAME_DIR .. "src/osd/modules/sound/coreaudio_sound.cpp",
		--MAME_DIR .. "src/osd/modules/sound/js_sound.cpp",
		--MAME_DIR .. "src/osd/modules/sound/mmdevice_helpers.cpp",
		--MAME_DIR .. "src/osd/modules/sound/mmdevice_helpers.h",
		MAME_DIR .. "src/osd/modules/sound/none.cpp",
		--MAME_DIR .. "src/osd/modules/sound/pa_sound.cpp",
		--MAME_DIR .. "src/osd/modules/sound/pulse_sound.cpp",
		--MAME_DIR .. "src/osd/modules/sound/pipewire_sound.cpp",
		--MAME_DIR .. "src/osd/modules/sound/sdl_sound.cpp",
		--MAME_DIR .. "src/osd/modules/sound/sdl3_sound.cpp",
		MAME_DIR .. "src/osd/modules/sound/sound_module.cpp",
		MAME_DIR .. "src/osd/modules/sound/sound_module.h",
		--MAME_DIR .. "src/osd/modules/sound/wasapi_sound.cpp",
		--MAME_DIR .. "src/osd/modules/sound/xaudio2_sound.cpp",
	}

end

project ("osd_" .. _OPTIONS["osd"])
	targetsubdir(_OPTIONS["target"] .."_" .._OPTIONS["subtarget"])
	uuid (os.uuid("osd_" .. _OPTIONS["osd"]))
	kind (LIBTYPE)

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
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/droid",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/file",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/renderer",
		MAME_DIR .. "MAME4droid-Current/src/osd/myosd/netplay"
	}

	mame4droid_osdmodules()

	files {
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
