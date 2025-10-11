require('neotest').setup({
  adapters = {
    require('neotest-minitest'),
    require('neotest-rspec'),
    require('neotest-vitest'),
  }
})
