---------------------------------------------------------------------------
--
--   mytarget.lua
--
--   FlykeSpice: For testing changes on our relevant drivers, so to speed up compilation 
--
---------------------------------------------------------------------------


--------------------------------------------------
-- Specify all the CPU cores & devices necessary for the
-- drivers we want to test
--------------------------------------------------

-- M68020 used by namcos22
-- M68000 used by namcos21
CPUS["M680X0"] = true

-- audio cpu used by namcos21
CPUS["M6809"] = true

-- m6801 & z80 cpu used by irem m62
CPUS["Z80"] = true
CPUS["M6800"] = true

--it's included by namcos21* source files but not used anywhere...
--CPUS["M6805"] = true

CPUS["COSMAC"] = true
BUSES["VIP"] = true
VIDEOS["CDP1861"] = true
VIDEOS["CDP1862"] = true
SOUNDS["DISCRETE"] = true
SOUNDS["CDP1863"] = true

--DSP used by both namcos22 & namcos21
CPUS["TMS320C2X"] = true
--used by namcos22
CPUS["M6805"] = true
CPUS["M37710"] = true
CPUS["M6502"] = true

--------------------------------------------------
-- Specify all the sound cores necessary for the
-- drivers referenced in tiny.lst.
--------------------------------------------------

--used by namcos22
SOUNDS["C352"] = true
--used by namcos21
SOUNDS["C140"] = true
SOUNDS["YM2610"] = true -- used by taito air system
SOUNDS["YM2151"] = true -- used by taito midnight landing


--used by irem m62
SOUNDS["AY8910"] = true
SOUNDS["MSM5205"] = true --used by Taito midnight landing

--------------------------------------------------
-- specify available video cores
--------------------------------------------------

--VIDEOS["MC6845"] = true


--------------------------------------------------
-- specify available machine cores
--------------------------------------------------

--used by namcos22
MACHINES["EEPROMDEV"] = true
MACHINES["MB87078"] = true

-- used by Irem62
MACHINES["NETLIST"] = true

-- used by Taito Air
MACHINES["WATCHDOG"] = true

-- z80 depends on these..
MACHINES["Z80DAISY"] = true
MACHINES["Z80CTC"] = true
MACHINES["Z80PIO"] = true
MACHINES["Z80SIO"] = true


--------------------------------------------------
-- specify available bus cores
--------------------------------------------------


--------------------------------------------------
-- This is the list of files that are necessary
-- for building all of the drivers referenced
-- in tiny.lst
--------------------------------------------------

function createProjects_mame_mytarget(_target, _subtarget)
	project ("mame_mytarget")
	targetsubdir(_target .."_" .. _subtarget)
	kind (LIBTYPE)
	uuid (os.uuid("drv-mame-mytarget"))
	addprojectflags()
	precompiledheaders_novs()

	includedirs {
		MAME_DIR .. "src/osd",
		MAME_DIR .. "src/emu",
		MAME_DIR .. "src/devices",
		MAME_DIR .. "src/mame/shared",
		MAME_DIR .. "src/lib",
		MAME_DIR .. "src/lib/util",
		MAME_DIR .. "3rdparty",
		GEN_DIR  .. "mame/layout",
	}

	files {
		MAME_DIR .. "src/mame/namco/namcos22.cpp",
		MAME_DIR .. "src/mame/namco/namcos22_v.cpp",
		MAME_DIR .. "src/mame/namco/namcomcu.cpp",

		MAME_DIR .. "src/mame/namco/namcos21.cpp",
		MAME_DIR .. "src/mame/namco/namcos21_3d.cpp",
		MAME_DIR .. "src/mame/namco/namcos21_dsp.cpp",
		MAME_DIR .. "src/mame/namco/namcos21_de.cpp",
		MAME_DIR .. "src/mame/namco/namcos21_c67.cpp",
		MAME_DIR .. "src/mame/namco/namcos21_dsp_c67.cpp",

		-- COSMAC VIP
		MAME_DIR .. "src/mame/rca/vip.cpp",

		-- Irem M62
		MAME_DIR .. "src/mame/irem/m62.cpp",
		MAME_DIR .. "src/mame/irem/m62_v.cpp",
		MAME_DIR .. "src/mame/irem/irem.cpp",
		MAME_DIR .. "src/mame/irem/nl_kidniki.cpp",


		-- namcos21 dependencies
		MAME_DIR .. "src/mame/namco/namco_c139.cpp",
		MAME_DIR .. "src/mame/namco/namco_c148.cpp",
		MAME_DIR .. "src/mame/shared/namco_c355spr.cpp",
		MAME_DIR .. "src/mame/namco/namco68.cpp",
		MAME_DIR .. "src/mame/namco/namco65.cpp",
		MAME_DIR .. "src/mame/namco/namcoio_gearbox.cpp",
		MAME_DIR .. "src/mame/namco/namco_dsp.cpp",

		-- Taito Air
		MAME_DIR .. "src/mame/taito/taitoair.cpp",
		MAME_DIR .. "src/mame/taito/taitoair_v.cpp",
		MAME_DIR .. "src/mame/taito/taito_helper.cpp",
		MAME_DIR .. "src/mame/taito/tc0080vco.cpp",
		MAME_DIR .. "src/mame/taito/taitoio.cpp",
		MAME_DIR .. "src/mame/taito/taitoio_yoke.cpp",
		MAME_DIR .. "src/mame/shared/taitosnd.cpp",

		-- Taito Midnight Landing
		MAME_DIR .. "src/mame/taito/mlanding.cpp"
	}
end

function linkProjects_mame_mytarget(_target, _subtarget)
	links {
		"mame_mytarget",
	}
end
