hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		repeat_delay = 250,
		repeat_rate = 75,

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

local move_window = function(by)
	return function()
		hl.dispatch(hl.dsp.window.move({ workspace = hl.get_active_window().workspace.id + by }))
	end
end

hl.gesture({
	fingers = 4,
	direction = "right",
	action = move_window(-1),
})
hl.gesture({
	fingers = 4,
	direction = "left",
	action = move_window(1),
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})
