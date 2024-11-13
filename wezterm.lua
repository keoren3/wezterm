local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	color_scheme = "Nord (Gogh)",
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Bold", stretch = "Normal", style = "Normal" }),
	font_size = 13.0,
	native_macos_fullscreen_mode = true,
	enable_scroll_bar = true,
	scrollback_lines = 350000,
	colors = {
		background = "black",
	},
	window_background_image = "/Users/" .. os.getenv("USER") .. "/.config/wezterm/dystopian.jpg",
	window_background_image_hsb = {
		-- Darken the background image by reducing it to 1/3rd
		brightness = 0.15,
	},

	keys = {
		{
			key = "w",
			mods = "CMD",
			action = wezterm.action.CloseCurrentTab({ confirm = false }),
		},
	},
}

return config
