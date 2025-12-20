local tmux_term = require('tmux-awesome-manager.src.term')
local wk = require("which-key")

wk.register({
  j = {
    name = "+javascript",
    n = tmux_term.run_wk({
      cmd = 'npm install %1',
      name = 'NPM Install',
      questions = {
        {
          question = 'npm install',
          required = true,
          open_as = 'pane',
          close_on_timer = 4,
          visit_first_call = false,
          focus_when_call = false
        }
      }
    }),

    g = tmux_term.run_wk({
      cmd = 'npm install -g %1',
      name = 'NPM Install Global',
      questions = {
        {
          question = 'npm install -g',
          required = true,
          open_as = 'pane',
          close_on_timer = 4,
          visit_first_call = false,
          focus_when_call = false
        }
      }
    }),
  },
  r = {
    name = "+rails",
    c = tmux_term.run_wk({
      cmd = 'rails c',
      name = 'Rails Console',
      open_as = 'window'
    }),

    g = tmux_term.run_wk({
      cmd = 'rails g %1',
      name = 'Rails Generate',
      questions = {
        {
          question = 'rails g',
          required = true,
          open_as = 'pane',
          close_on_timer = 4,
          visit_first_call = false,
          focus_when_call = false
        }
      }
    }),

    b = {
      name = "+bundler",
      a = tmux_term.run_wk({
        cmd = 'bundle add %1',
        name = 'Bundle Add',
        questions = {
          {
            question = 'bundle add',
            required = true,
            open_as = 'pane',
            close_on_timer = 4,
            visit_first_call = false,
            focus_when_call = false
          }
        }
      }),

      i = tmux_term.run_wk({
        cmd = 'bundle install',
        name = 'Bundle Install',
        open_as = 'pane',
        close_on_timer = 4,
        visit_first_call = false,
        focus_when_call = false
      }),
    }
  },
}, { prefix = "<leader>", silent = true })
