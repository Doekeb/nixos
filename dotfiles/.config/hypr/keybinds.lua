---------------------
---- KEYBINDINGS ----
---------------------
local terminal = "kitty"
local file_manager = "nautilus"
local menu = "hyprlauncher"

local main_mod = "SUPER"
local ipc = "noctalia-shell ipc call "

-- Move focus
hl.bind(main_mod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(main_mod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(main_mod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(main_mod .. " + j", hl.dsp.focus({ direction = "down" }))

-- Move windows
hl.bind(main_mod .. " + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind(main_mod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind(main_mod .. " + SHIFT + k", hl.dsp.window.move({ direction = "up" }))
hl.bind(main_mod .. " + SHIFT + j", hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(main_mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(main_mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Volume and brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume increase"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume decrease"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume muteOutput"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. "volume muteInput"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness increase"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness decrease"), { locked = true, repeating = true })

-- Media keys
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. "media next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. "media playPause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. "media playPause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. "media previous"), { locked = true })

-- Zoom
hl.bind(main_mod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(main_mod .. " + Z", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

-- Menu
hl.bind(main_mod .. " + SPACE", hl.dsp.exec_cmd(ipc .. "launcher toggle"))

-- Clipboard manager
hl.bind(main_mod .. " + V", hl.dsp.exec_cmd(ipc .. "launcher clipboard"))

hl.bind(main_mod .. " + COMMA", hl.dsp.exec_cmd(ipc .. "settings toggle"))

-- Mouse move windows
-- Move/resize windows with main_mod + LMB/RMB and dragging
hl.bind(main_mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(main_mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(main_mod .. " + SHIFT + mouse:272", hl.dsp.window.resize(), { mouse = true })

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(main_mod .. " + Q", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(main_mod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(
	main_mod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
hl.bind(main_mod .. " + E", hl.dsp.exec_cmd(file_manager))
hl.bind(main_mod .. " + P", hl.dsp.window.pseudo())
hl.bind(main_mod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Example special workspace (scratchpad)
-- hl.bind(main_mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
-- hl.bind(main_mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with main_mod + scroll
hl.bind(main_mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(main_mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
