Current (and ever-changing) development toolkit settings.

## Disclaimer
`Makefile` DESTRUCTIVELY remove all existing dotfiles and symlinks related dotfile defined in this repository. I
recommend that you review the `Makefile` before installing.

## Dependencies
Since `Makefile` does not attempt to make any installations on your behalf, these binaries/packages are required to be
installed.

### Bare Minimum

| Library                                              | Command                                                                                                                                |
|------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| ![homebrew](https://brew.sh/)                        | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"                                     |
| ![curl](https://curl.haxx.se/)                       | brew install curl                                                                                                                      |
| ![ag](https://geoff.greer.fm/ag/)                    | brew install the_silver_searcher                                                                                                       |
| ![git](https://www.atlassian.com/git/tutorials)      | brew install git                                                                                                                       |
| ![nvim](https://neovim.io/)                          | brew tap neovim/neovim && brew install neovim                                                                                          |
| ![vim-plug](https://github.com/junegunn/vim-plug)    | curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |
| ![oh-my-zsh](http://ohmyz.sh/)                       | sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"                                            |
| ![geometry](https://github.com/fribmendes/geometry)  | git clone https://github.com/fribmendes/geometry.git $HOME/.oh-my-zsh/custom/themes                                                    |
| ![tmux](https://gist.github.com/MohamedAlaa/2961058) | brew install tmux                                                                                                                      |

### Recommended

| Env                                                  | Command                                                                                                                                |
|------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| ![direnv](https://direnv.net/)                       | brew install direnv                                                                                                                    |
| ![crenv](https://github.com/pine/crenv)              | curl -L https://raw.github.com/pine/crenv/master/install.sh | bash                                                                     |
| ![rbenv](https://github.com/rbenv/rbenv)             | git clone https://github.com/rbenv/rbenv.git ~/.rbenv                                                                                  |
| ![nodenv](https://github.com/nodenv/nodenv)          | git clone https://github.com/nodenv/nodenv.git ~/.nodenv                                                                               |
| ![goenv](https://github.com/syndbg/goenv)            | git clone https://github.com/syndbg/goenv.git ~/.goenv                                                                                 |

| Utilities                                            | Command                                                                                                                                |
|------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| ![autojumpk](https://github.com/wting/autojump)      | brew install autojump                                                                                                                  |
| ![fzf](https://github.com/junegunn/fzf)              | brew install fzf                                                                                                                       |

_footnote: commands given here may require additional steps to be executed before it is in a working condition, please
refer to the website/repository for the full documentation_


## Credits
Settings here are heavily inspired by [martin-svk/dot-files](https://github.com/martin-svk/dot-files).
Extending from his work, I have made significant changes to most of the settings to accomodate the OS X (since his configurations were mainly meant for linux distros).
