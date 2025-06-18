-- Toggle all terminals in a set, or create them if they don't exist
-- @param numbers table Numbers of the terminals to toggle
-- @param size number Size of the terminal, they are all the same size
-- @param cwd string|nil The current working directory to open the terminal in
-- @param direction string The direction to open the terminal in
-- @return nil
--
local function toggle_set(numbers, size, cwd, direction)
  local terms = require 'toggleterm.terminal'
  local terminals = terms.get_all()

  local any_open = false

  -- check if any of the terminals in the set are open
  for _, term in pairs(terminals) do
    if term:is_open() then
      any_open = true
      break
    end
  end

  -- if any of the terminals in the set are open, close them all
  if any_open then
    for _, term in pairs(terminals) do
      term:close()
    end
  else
    for _, number in pairs(numbers) do
      local term = terms.get_or_create_term(number, cwd, direction, '#' .. number)
      term:open(size, direction)
    end
  end
end

return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
    opts = {
      start_in_insert = true,
    },
    keys = {
      {
        '<leader>tt',
        function()
          local DEFAULT_COUNT = 1
          local count = vim.v.count
          if count == 0 then
            count = vim.g.previous_terminals or DEFAULT_COUNT
          end

          vim.g.previous_terminals = count

          local numbers = {}
          for i = 1, count do
            numbers[i] = i
          end

          toggle_set(numbers, 20, vim.loop.cwd(), 'horizontal')
        end,
        desc = 'ToggleTerm (all)',
      },
    },
  },
}
