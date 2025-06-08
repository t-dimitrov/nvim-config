-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Add any additional keymaps here
local function get_cmake_binary()
  local cmake_file = vim.fn.getcwd() .. "/CMakeLists.txt"
  local binary_name = nil

  if vim.fn.filereadable(cmake_file) == 1 then
    for line in io.lines(cmake_file) do
      -- Look for add_executable line and capture first argument
      local exec_name = line:match("^%s*add_executable%(([%w_%-]+)")
      if exec_name then
        binary_name = exec_name
        break
      end
    end
  end

  return binary_name or "a.out"
end

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set your build directory
local build_dir = "build"

-- Configure Project
map("n", "<leader>pp", function()
    vim.cmd("tabnew | terminal cmake -S . -B " .. build_dir)
end, opts)

-- Compile Program
map("n", "<leader>pc", function()
    vim.cmd("tabnew | terminal cmake --build " .. build_dir)
end, opts)

-- Execute Binary
map("n", "<leader>pe", function()
    local binary = get_cmake_binary()
    vim.cmd("tabnew | terminal " .. build_dir .. "/" .. binary)
end, opts)

-- Compile and Execute Program
map("n", "<leader>pr", function()
    local binary = get_cmake_binary()
    vim.cmd("tabnew | terminal cmake --build " .. build_dir .. " && ./" .. build_dir .. "/" .. binary)
end, opts)

-- Build and run executable in Terminal
map("n", "<leader>px", function()
    local bin = get_cmake_binary()
    local cmd = "cmake -G Ninja -S . -B " .. build_dir .. " && cmake --build " .. build_dir .. " && ./" .. build_dir .. "/" .. bin
    vim.cmd("tabnew | terminal " .. cmd)
end, opts)

