## Current (and ever-changing) development toolkit settings.

### Disclaimer
`Makefile` DESTRUCTIVELY remove all existing dotfiles and symlinks related dotfile defined in this repository. I
recommend that you review the `Makefile` before installing.

### Dependencies
Since `Makefile` does not attempt to make any installations on your behalf, these binaries/packages are required to be
installed.

#### Bare Minimum

Libraries
- [ag](https://geoff.greer.fm/ag/),
  [curl](https://curl.haxx.se/),
  [geometry](https://github.com/fribmendes/geometry),
  [git](https://www.atlassian.com/git/tutorials),
  [homebrew](https://brew.sh/),
  [nvim](https://neovim.io/),
  [oh-my-zsh](http://ohmyz.sh/),
  [tmux](https://gist.github.com/MohamedAlaa/2961058),
  [vim-plug](https://github.com/junegunn/vim-plug),

#### Recommended

Envs
- [crenv](https://github.com/pine/crenv),
  [direnv](https://direnv.net/),
  [goenv](https://github.com/syndbg/goenv),
  [nodenv](https://github.com/nodenv/nodenv),
  [rbenv](https://github.com/rbenv/rbenv)

Utilities
- [autojump](https://github.com/wting/autojump),
  [fzf](https://github.com/junegunn/fzf)

### Credits
Configurations are heavily inspired by [martin-svk/dot-files](https://github.com/martin-svk/dot-files).
Extending from his work, I have made significant changes to most of the settings to accomodate the OS X (since his configurations were mainly meant for linux distros).
