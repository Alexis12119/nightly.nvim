-- Experimental Stage
local palette = {}
local color = "black"

if color == "blue" then
  palette = {
    color1 = "#0E131B",
    color2 = "#1A1b26",
    color3 = "#292e42",
    color4 = "#6F87AF",
  }
elseif color == "green" then
  palette = {
    color1 = "#141b1e",
    color2 = "#242E2F",
    color3 = "#242E32",
    color4 = "#87AF87",
  }
elseif color == "red" then
  palette = {
    color1 = "#140B14",
    color2 = "#2F1F30",
    color3 = "#322E32",
    color4 = "#81454C",
  }
elseif color == "white" then
  palette = {
    color1 = "#2E3440",
    color2 = "#393B4E",
    color3 = "#4C4F69",
    color4 = "#CCD0DA",
  }
else
  palette = {
    color1 = "#121212",
    color2 = "#181818",
    color3 = "#222222",
    color4 = "#6B7478",
  }
end

local colors = {
  -- The default text color
  foreground = "#BBC2CF",
  -- The default background color
  background = palette.color1,

  -- Overrides the cell background color when the current cell is occupied by the
  -- cursor and the cursor style is set to Block
  cursor_fg = "#000000",
  -- Overrides the text color when the current cell is occupied by the cursor
  cursor_bg = "#A9B1D6",
  -- Specifies the border color of the cursor when the cursor style is set to Block,
  -- or the color of the vertical or horizontal bar when the cursor style is set to
  -- Bar or Underline.
  cursor_border = palette.color2,

  -- the foreground color of selected text
  selection_fg = "#BBC2CF",
  -- the background color of selected text
  selection_bg = palette.color3,

  -- The color of the scrollbar "thumb"; the portion that represents the current viewport
  scrollbar_thumb = palette.color3,

  -- The color of the split lines between panes
  split = palette.color4,

  ansi = {
    "#BBC2CF",
    "#ECBE7B",
    "#98BE65",
    "#6F87AF",
    "#7AA2F7",
    "#BB9AF7",
    "#6F87AF",
    "#BBC2CF",
  },
  brights = {
    "#BBC2CF",
    "#DB4B4B",
    "#98BE65",
    "#BBC2CF",
    "#7AA2F7",
    "#BB9AF7",
    "#6F87AF",
    "#BBC2CF",
  },
  -- Arbitrary colors of the palette in the range from 16 to 255
  indexed = { [136] = "#D19A66" },

  -- Since: 20220319-142410-0fcdea07
  -- When the IME, a dead key or a leader key are being processed and are effectively
  -- holding input pending the result of input composition, change the cursor
  -- to this color to give a visual cue about the compose state.
  compose_cursor = "#ECBE7B",

  -- Colors for copy_mode and quick_select
  -- available since: 20220807-113146-c2fee766
  -- In copy_mode, the color of the active text is:
  -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
  -- 2. selection_* otherwise
  copy_mode_active_highlight_bg = { Color = "#000000" },
  -- use `AnsiColor` to specify one of the ansi color palette values
  -- (index 0-15) using one of the names "Black", "Maroon", "Green",
  --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
  -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
  copy_mode_active_highlight_fg = { AnsiColor = "Black" },
  copy_mode_inactive_highlight_bg = { Color = "#52ad70" },
  copy_mode_inactive_highlight_fg = { AnsiColor = "White" },

  quick_select_label_bg = { Color = "peru" },
  quick_select_label_fg = { Color = "#ffffff" },
  quick_select_match_bg = { AnsiColor = "Navy" },
  quick_select_match_fg = { Color = "#ffffff" },
  tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = "#12181B",

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      -- The color of the text for the tab
      bg_color = "#0F0F0F",
      fg_color = "#ABABAF",

      -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
      -- label shown for this tab.
      -- The default is "Normal"
      intensity = "Normal",

      -- Specify whether you want "None", "Single" or "Double" underline for
      -- label shown for this tab.
      -- The default is "None"
      underline = "None",

      -- Specify whether you want the text to be italic (true) or not (false)
      -- for this tab.  The default is false.
      italic = false,

      -- Specify whether you want the text to be rendered with strikethrough (true)
      -- or not for this tab.  The default is false.
      strikethrough = false,
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = "#12181B",
      fg_color = "#909090",

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over inactive tabs
    inactive_tab_hover = {
      bg_color = "#12181B",
      fg_color = "#ABABAF",
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab_hover`.
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = "#0F0F0F",
      fg_color = "#ABABAF",
      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over the new tab button
    new_tab_hover = {
      bg_color = "#1A1b26",
      fg_color = "#ABABAF",
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab_hover`.
    },
  },
}

return colors
