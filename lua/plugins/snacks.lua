local headers = {
  [[
 ░░░░░░░ ░░    ░░ ░░░    ░░ ░░░░░░   ░░░░░  ░░    ░░
 ▒▒      ▒▒    ▒▒ ▒▒▒▒   ▒▒ ▒▒   ▒▒ ▒▒   ▒▒  ▒▒  ▒▒ 
 ▒▒▒▒▒▒▒ ▒▒    ▒▒ ▒▒ ▒▒  ▒▒ ▒▒   ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒  
      ▓▓ ▓▓    ▓▓ ▓▓  ▓▓ ▓▓ ▓▓   ▓▓ ▓▓   ▓▓    ▓▓   
 ███████  ██████  ██   ████ ██████  ██   ██    ██   
]],
  [[
 ░░░    ░░░  ░░░░░░  ░░░    ░░ ░░░░░░   ░░░░░  ░░    ░░
 ▒▒▒▒  ▒▒▒▒ ▒▒    ▒▒ ▒▒▒▒   ▒▒ ▒▒   ▒▒ ▒▒   ▒▒  ▒▒  ▒▒ 
 ▒▒ ▒▒▒▒ ▒▒ ▒▒    ▒▒ ▒▒ ▒▒  ▒▒ ▒▒   ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒  
 ▓▓  ▓▓  ▓▓ ▓▓    ▓▓ ▓▓  ▓▓ ▓▓ ▓▓   ▓▓ ▓▓   ▓▓    ▓▓   
 ██      ██  ██████  ██   ████ ██████  ██   ██    ██   
]],
  [[
 ░░░░░░░░ ░░    ░░ ░░░░░░░ ░░░░░░░ ░░░░░░   ░░░░░  ░░    ░░
    ▒▒    ▒▒    ▒▒ ▒▒      ▒▒      ▒▒   ▒▒ ▒▒   ▒▒  ▒▒  ▒▒ 
    ▒▒    ▒▒    ▒▒ ▒▒▒▒▒   ▒▒▒▒▒▒▒ ▒▒   ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒  
    ▓▓    ▓▓    ▓▓ ▓▓           ▓▓ ▓▓   ▓▓ ▓▓   ▓▓    ▓▓   
    ██     ██████  ███████ ███████ ██████  ██   ██    ██   
]],
  [[
 ░░     ░░ ░░░░░░░ ░░░░░░  ░░░    ░░ ░░░░░░░ ░░░░░░░ ░░░░░░   ░░░░░  ░░    ░░
 ▒▒     ▒▒ ▒▒      ▒▒   ▒▒ ▒▒▒▒   ▒▒ ▒▒      ▒▒      ▒▒   ▒▒ ▒▒   ▒▒  ▒▒  ▒▒ 
 ▒▒  ▒  ▒▒ ▒▒▒▒▒   ▒▒   ▒▒ ▒▒ ▒▒  ▒▒ ▒▒▒▒▒   ▒▒▒▒▒▒▒ ▒▒   ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒  
 ▓▓ ▓▓▓ ▓▓ ▓▓      ▓▓   ▓▓ ▓▓  ▓▓ ▓▓ ▓▓           ▓▓ ▓▓   ▓▓ ▓▓   ▓▓    ▓▓   
  ███ ███  ███████ ██████  ██   ████ ███████ ███████ ██████  ██   ██    ██   
]],
  [[
 ░░░░░░░░ ░░   ░░ ░░    ░░ ░░░░░░  ░░░░░░░ ░░░░░░   ░░░░░  ░░    ░░
    ▒▒    ▒▒   ▒▒ ▒▒    ▒▒ ▒▒   ▒▒ ▒▒      ▒▒   ▒▒ ▒▒   ▒▒  ▒▒  ▒▒ 
    ▒▒    ▒▒▒▒▒▒▒ ▒▒    ▒▒ ▒▒▒▒▒▒  ▒▒▒▒▒▒▒ ▒▒   ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒  
    ▓▓    ▓▓   ▓▓ ▓▓    ▓▓ ▓▓   ▓▓      ▓▓ ▓▓   ▓▓ ▓▓   ▓▓    ▓▓   
    ██    ██   ██  ██████  ██   ██ ███████ ██████  ██   ██    ██   
]],
  [[
 ░░░░░░░ ░░░░░░  ░░ ░░░░░░   ░░░░░  ░░    ░░
 ▒▒      ▒▒   ▒▒ ▒▒ ▒▒   ▒▒ ▒▒   ▒▒  ▒▒  ▒▒ 
 ▒▒▒▒▒   ▒▒▒▒▒▒  ▒▒ ▒▒   ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒  
 ▓▓      ▓▓   ▓▓ ▓▓ ▓▓   ▓▓ ▓▓   ▓▓    ▓▓   
 ██      ██   ██ ██ ██████  ██   ██    ██   
]],
  [[
 ░░░░░░░  ░░░░░  ░░░░░░░░ ░░    ░░ ░░░░░░  ░░░░░░   ░░░░░  ░░    ░░
 ▒▒      ▒▒   ▒▒    ▒▒    ▒▒    ▒▒ ▒▒   ▒▒ ▒▒   ▒▒ ▒▒   ▒▒  ▒▒  ▒▒ 
 ▒▒▒▒▒▒▒ ▒▒▒▒▒▒▒    ▒▒    ▒▒    ▒▒ ▒▒▒▒▒▒  ▒▒   ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒  
      ▓▓ ▓▓   ▓▓    ▓▓    ▓▓    ▓▓ ▓▓   ▓▓ ▓▓   ▓▓ ▓▓   ▓▓    ▓▓   
 ███████ ██   ██    ██     ██████  ██   ██ ██████  ██   ██    ██   
]],
}

local quotes = {
  [[
"LIQUID!"

• Solid Snake
]],
  [[
"Sometimes in combat or when you're near the end of your rope,
You can see things that normally aren't there or shouldn't be there.
Relax. It's not a bug. It's just the mysteries of the human mind."

• Master Miller
]],
  [[
"There are only two hard things in Computer Science:
cache invalidation and naming things."

• Phil Karlton
]],
  [[
"Adding manpower to a late software project, makes it later."

• Frederick P. Brooks Jr
]],
  [[
"Every good work of software starts
by scratching a developer’s personal itch."

• Eric S. Raymond
]],
  [[
"Organizations which design systems are constrained
to produce designs which are copies of the
communication structures of these organizations."

• Melvin E. Conway
]],
  [[
“It is not enough for code to work.”

• Uncle Bob
]],
  [[
“Truth can only be found in one place: the code.”

• Uncle Bob
]],
  [[
“It was a "jump to conclusions" mat!

You see it would be this mat, that you would put on the floor
and it would have different - conclusions - on it,
that you could jump to.”

• Tom Smykowski
]],
  [[
“FINKLE IS EINHORN, EINHORN IS FINKLE!”

• Ace Ventura
]],
}

local function randNum()
  math.randomseed(os.time())
  return math.random()
end

local function getHeader()
  return headers[os.date("*t").wday] .. "\n" .. os.date("%B %d, %Y")
end

local function getQuote()
  return quotes[math.random(#quotes)]
end

return {
  "folke/snacks.nvim",
  ---@module "snacks"
  ---@class snacks.Config
  opts = {
    notifier = {
      margin = {
        top = 1,
      },
      style = "compact",
    },
    picker = {
      previewers = {
        git = {
          native = true,
        },
      },
    },
    dashboard = {
      preset = {
        header = getHeader(),
        keys = {
          {
            icon = " ",
            key = "d",
            desc = "Daily Note",
            action = ":ObsidianDailies",
          },
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "x", desc = "Extras", action = ":LazyExtras" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          {
            icon = " ",
            key = "z",
            desc = "Chezmoi",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.expand('~') .. '/.local/share/chezmoi/home/'})",
          },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      width = 30,
      sections = {
        { section = "header" },
        { section = "keys", gap = 0, padding = 1 },
        { section = "startup", padding = 1 },
        -- footer
        {
          enabled = randNum() > 0.90,
          ---@class snacks.dashboard.Text
          text = { getQuote(), hl = "Comment", align = "center" },
        },
      },
    },
  },
}
