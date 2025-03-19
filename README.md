# Personal Dotfiles

![.dotfiles](/images/screenshot.jpg)

## Features

* Bootstrap the entire machine using one command
* Homebrew-based installation of dependencies, applications (both Homebrew casks and App Store apps), and VSCode extensions
* Works for MacOS or Linux (Thanks, Homebrew!)
* `{Neovim,Wezterm}`-centric

## Install

> [!WARNING]
> These are my personal dotfiles. I'm _beyond_ stoked that you're here reading this, but these dotfiles were meticulously crafted for my machines and weren't made as a dotfiles distribution. If
> you do want to install them, well... first, I'd be ecstatic! But you'll want to clone the repo and make sure to read the source so you _fully understand_ what these dotfiles do.

```
$ git clone https://github.com/brandoncordell/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./init.zsh
```

## Motivation

### Short story, long
My personal path through development tools probably mirrors most others. Early on in my career, I would surround myself with all the new shiny things on HackerNews, Reddit, Digg, or
Slashdot (really showing my age here...). When I finally took the plunge to move from TextMate to Vim, it was because [@wycasts](https://github.com/wycats)' [Janus](https://github.com/carlhuda/janus) distribution
was making the rounds. It was built to work on top of MacVim and took a lot of the required learning out of the equation. It made Vim feel more usable out of the box and included some goodies to make Vim a
little less alien (e.g., NERDTree, Command-T, etc).

Learning Vim was my first real foray into customizing my tools and workflow. During that time, many more Vim distributions popped up, and other communities began to take the same approach. When I found oh-my-zsh, it seemed the perfect time to migrate from bash to mold my environment further.

The combination of Janus, Oh My Zsh, and actually learning the tools was enlightening... but it wasn't without its flaws.
My terminal had become **so slow**—painfully so. Just for fun, here's a [12-year old video](https://www.youtube.com/watch?v=sK_Bydx7Dsw) I recorded in one my many attempts to get help.

As these things do, this led me down another rabbit hole. I cherry-picked the things I liked from Janus and  Oh My Zsh to my own configs. Performance issues solved, I found another issue with my setup: syncing things between my work and personal machines. I'd used [rsync](https://linux.die.net/man/1/rsync), then dropbox, as well as many forgotten tools in between, before I started down the next rabbit hole.

Dotfiles.

At the time, there weren't a lot of good examples on Github, but when thoughtbot released [rcm](https://github.com/thoughtbot/rcm) back in 2013, it seemed like a problem finally solved. We started using thoughtbot's [dotfiles](https://github.com/thoughtbot/dotfiles) at work. It seemed like the best of all worlds. {Vim,zsh,tmux}-centric, sane defaults, and an easy ability to modify or extend their configs with the `.local` convention.

But all good things must come to an end. I moved from Vim to Neovim, ditched many of the plugins for their Lua counterparts, and grew out of the workflow that we were using with their dotfiles. I decided to write my Neovim config from scratch, so I figured why not revisit my dotfiles as well?

### TL;DR

These days, I tend to prefer minimalism and things that Just Work™.

## Things I've changed
* Neovim configs rewritten from the ground up
* Neovim plugin audit - Removed plugins that don't add enough to my daily workflow to be worth keeping
* Moved from iTerm2 and tmux to Wezterm
* Moved from Ansible to pure zsh for bootstrapping the environment
* Moved from Antidote to a few zsh functions for managing zsh plugins (a modified version of [mattmc3/zsh_unplugged](https://github.com/mattmc3/zsh_unplugged))

## Things still to change (TODO)

- [ ] Move away from RCM to pure zsh
- [ ] Change the bootstrapping so this can be installed using curl (e.g., Homebrew) straight from the repo
- [ ] Ensure idempotency
- [ ] Split the scripts between bootstrapping and updating (though this may not be necessary if it's idempotent)
- [ ] Add MacOS settings (`defaults`) to this script
- [ ] _probably many, many... more_

## Many thanks

* [Yehuda Katz](https://github.com/wycats) for your work on [janus](https://github.com/carlhuda/janus) and starting me on my Vim journey all those years ago
* [Robbie Russell](https://github.com/robbyrussell) for your work on [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) and starting me on my zsh journey all those years ago
* [Thoughtbot](https://github.com/thoughtbot) for [rcm](https://github.com/thoughtbot/rcm) and their [dotfiles](https://github.com/thoughtbot/dotfiles)
* [Zach Holman](https://github.com/holman/dotfiles), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles), and [Dries Vints](https://github.com/driesvints/dotfiles) for the inspiration used in many parts of this project (and the code I stole)
* [mattmc3](https://github.com/mattmc3) for the awesome work you put into [Antidote](https://github.com/mattmc3/antidote) and then making me realize [I didn't need a zsh plugin manager in the first place](https://github.com/mattmc3/zsh_unplugged)