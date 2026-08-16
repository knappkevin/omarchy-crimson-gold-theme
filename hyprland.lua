local active_border_color = "rgb(baa007)"
local active_border_color2 = "rgb(ff2222)"
local active_shadow_color = "rgb(baa007)"
local inactive_border_color = "rgba(30486099)"
local inactive_shadow_color = "rgba(30486077)"

hl.config({
  general = {
    col = {
      active_border = {
          colors = { active_border_color2, active_border_color},
          angle = 45
      },
      inactive_border = inactive_border_color,
    }
  },

  group = {
    col = {
      border_active = {
          colors = { active_border_color2, active_border_color},
          angle = 45
      },
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    shadow = {
      enabled = true,
      range = 1,
      render_power = 2,
      color = active_shadow_color,
      color_inactive = inactive_shadow_color,
    },
  },

  hl.curve( "ease", { type = "bezier", points = { {0.33, 1}, {0.68, 1} } }),
  hl.animation({ leaf = "workspaces", enabled = true, speed = 2, bezier = "ease" }),

})
