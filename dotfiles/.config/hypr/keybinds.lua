-- https://wiki.hypr.land/Configuring/Basics/Binds/

local terminal = "kitty"
local file_manager = "nautilus"

local main_mod = "SUPER"
local window_mod = "SUPER + SUPER_L"
local ipc = "noctalia msg "

local bind_window_maps = function(mods)
	local mod_string = ""
	for _, val in ipairs(mods) do
		mod_string = mod_string .. val .. " + "
	end

	-- Move focus
	local focus_mod = mod_string
	hl.bind(focus_mod .. "h", hl.dsp.focus({ direction = "left" }))
	hl.bind(focus_mod .. "l", hl.dsp.focus({ direction = "right" }))
	hl.bind(focus_mod .. "k", hl.dsp.focus({ direction = "up" }))
	hl.bind(focus_mod .. "j", hl.dsp.focus({ direction = "down" }))

	-- Move windows
	local move_mod = mod_string .. "SHIFT + "
	hl.bind(move_mod .. " + h", hl.dsp.window.move({ direction = "left" }))
	hl.bind(move_mod .. " + l", hl.dsp.window.move({ direction = "right" }))
	hl.bind(move_mod .. " + k", hl.dsp.window.move({ direction = "up" }))
	hl.bind(move_mod .. " + j", hl.dsp.window.move({ direction = "down" }))
	-- TODO: Wrap to start/end of next workspace

	-- Move workspaces
	local workspace_mod = mod_string .. "CTRL + "
	hl.bind(workspace_mod .. " + h", hl.dsp.window.move({ workspace = "-1" }))
	hl.bind(workspace_mod .. " + l", hl.dsp.window.move({ workspace = "+1" }))

	-- Workspaces by index
	for i = 1, 10 do
		local key = i % 10 -- 10 maps to key 0
		hl.bind(mod_string .. key, hl.dsp.focus({ workspace = i }))
		hl.bind(workspace_mod .. key, hl.dsp.window.move({ workspace = i }))
		hl.bind(move_mod .. key, hl.dsp.window.move({ workspace = i }))
	end
end

bind_window_maps({ main_mod })

-- Switch to window submap
-- TODO: Better way to do theme/color/visual-indicator
hl.bind(window_mod, function()
	hl.config({ general = { col = { active_border = "#D27E99" } } })
end, { release = true })
hl.bind(window_mod, hl.dsp.submap("window"), { release = true })
hl.define_submap("window", function()
	bind_window_maps({})
	hl.bind("ESCAPE", function()
		hl.config({ general = { col = { active_border = "#957FB8" } } })
	end, { release = true })
	hl.bind(window_mod, function()
		hl.config({ general = { col = { active_border = "#957FB8" } } })
	end, { release = true })
	hl.bind("ESCAPE", hl.dsp.submap("reset"))
	hl.bind(window_mod, hl.dsp.submap("reset"))
end)

-- Volume and brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. "mic-mute"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"), { locked = true, repeating = true })

-- Media keys
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. "media next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. "media toggle"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. "media toggle"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. "media previous"), { locked = true })

-- Zoom
hl.bind(main_mod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(main_mod .. " + Z", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

-- Menu
hl.bind(main_mod .. " + SPACE", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))

-- Clipboard manager
hl.bind(main_mod .. " + V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))

-- Noctalia settings
hl.bind(main_mod .. " + COMMA", hl.dsp.exec_cmd(ipc .. "settings-toggle"))

-- Noctalia session manager
hl.bind(main_mod .. " + ESCAPE", hl.dsp.exec_cmd(ipc .. "panel-toggle session"))

-- Screenshot
hl.bind("PRINT", hl.dsp.exec_cmd(ipc .. "screenshot-region"))

-- Mouse move windows
-- Move/resize windows with main_mod + LMB/RMB and dragging
hl.bind(main_mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(main_mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(main_mod .. " + SHIFT + mouse:272", hl.dsp.window.resize(), { mouse = true })

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(main_mod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(main_mod .. " + W", hl.dsp.window.close())
hl.bind(main_mod .. " + E", hl.dsp.exec_cmd(file_manager))
hl.bind(main_mod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(main_mod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Example special workspace (scratchpad)
-- hl.bind(main_mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
-- hl.bind(main_mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with main_mod + scroll
hl.bind(main_mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(main_mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
