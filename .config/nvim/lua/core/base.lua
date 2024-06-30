local o = vim.opt

-- set split to always below and right
o.splitright = true
o.splitbelow = true

-- added relative lines, usefull to jumps
o.number = true
o.relativenumber = true

-- allow scroll to suck at middle when list lots
o.scrolloff = 999

-- adding clipboard to + register
o.clipboard = "unnamedplus"

-- inherit from termial for colors
o.termguicolors = true

-- allow to go fetther in virtual mode
o.virtualedit = "block"

-- adding sliped new window when replacing word
o.inccommand = "split"

------------------
o.expandtab = true
o.tabstop = 4
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2
o.ignorecase = true
