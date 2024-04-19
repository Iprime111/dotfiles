local wezterm = require("wezterm")

return {
    enable_wayland = false,
	color_scheme = "Catppuccin Mocha",

    font = wezterm.font {
        family = 'JetBrains Mono',
        harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
    },

	default_cursor_style = "BlinkingBar",

	default_prog = { "tmux" },
    default_gui_startup_args = { "start" },
	window_close_confirmation = "NeverPrompt",
	hide_tab_bar_if_only_one_tab = true,

	window_padding = {
		top    = "1cell",
		right  = "3cell",
		bottom = "1cell",
		left   = "3cell",
	},

	inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.8,
	},

	window_background_opacity = 1.0,
	text_background_opacity   = 1.0,

    keys = require("keys"),
}
