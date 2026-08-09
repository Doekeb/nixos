-- https://wiki.hypr.land/Configuring/Basics/Variables/
local colorscheme = require("colorscheme")
hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,

		border_size = 1,

		col = {
			-- active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			active_border = colorscheme.base0E,
			-- inactive_border = "rgba(595959aa)",
			inactive_border = colorscheme.base03,
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 10,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 0.95,

		shadow = {
			enabled = true,
			-- range = 4,
			-- render_power = 3,
			range = 0,
			render_power = 0,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 5,
			passes = 3,
			vibrancy = 0.1696,
		},
	},
	misc = {
		force_default_wallpaper = 1, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
	},
})
