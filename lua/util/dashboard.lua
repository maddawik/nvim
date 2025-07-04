local M = {}

M.headers = {
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

M.quotes = {
  [[
“LIQUID!”

• Solid Snake
]],
  [[
“Sometimes in combat or when you're near the end of your rope,
You can see things that normally aren't there or shouldn't be there.
Relax. It's not a bug. It's just the mysteries of the human mind.”

• Master Miller
]],
  [[
“There are only two hard things in Computer Science:
cache invalidation and naming things.”

• Phil Karlton
]],
  [[
“Adding manpower to a late software project, makes it later.”

• Frederick P. Brooks Jr
]],
  [[
“Every good work of software starts
by scratching a developer’s personal itch.”

• Eric S. Raymond
]],
  [[
“Organizations which design systems are constrained
to produce designs which are copies of the
communication structures of these organizations.”

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
  [[
“Perfect is the enemy of good.”

• Voltaire
]],
  [[
“I like parties, I like fun. I want to live in a hamburger bun.”

• Casey Tatum and his brother
]],
  [[
“Make the test work quickly, committing whatever sins necessary in process.”

• Kent Beck
]],
  [[
“This shouldn't change anything on your box.”

• Andrew Riehm
]],
}

M.rand_num = function()
  math.randomseed(os.time())
  return math.random()
end

M.get_header = function()
  return M.headers[os.date("*t").wday] .. "\n" .. os.date("%B %d, %Y")
end

M.get_quote = function()
  return M.quotes[math.random(#M.quotes)]
end

return M
