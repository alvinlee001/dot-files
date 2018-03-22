.PHONY: all
all: install_ag install_git install_nvim install_ideavim install_onivim install_rubyrc install_tmux install_zshrc

.PHONY: install_ag
install_ag: clean_ag
	@echo "Symlinking .agignore"
	ln -sf `pwd`/other/agignore ~/.agignore

clean_ag:
	rm -rf ~/.agignore

install_git: clean_git
	@echo "Symlinking .gitconfig"
	ln -sf `pwd`/git/gitconfig ~/.gitconfig
	@echo "Symlinking .gitignore"
	ln -sf `pwd`/git/gitignore ~/.gitignore

clean_git:
	rm -rf ~/.gitconfig
	rm -rf ~/.gitignore

install_nvim: clean_nvim
	@echo "Creating Neovim folder"
	mkdir -p ~/.config/nvim
	@echo "Creating Neovim dependencies folder"
	mkdir -p ~/.config/nvim/autoload
	@echo "Symlinking init.vim"
	ln -sf `pwd`/neovim/init.vim ~/.config/nvim/init.vim
	@echo "Symlinking utils.vim"
	ln -sf `pwd`/neovim/autoload/utils.vim ~/.config/nvim/autoload/utils.vim

clean_nvim:
	rm -rf ~/.config/nvim

install_ideavim: clean_ideavim
	@echo "Symlinking .ideavimrc"
	ln -sf `pwd`/ideavim/ideavimrc ~/.ideavimrc

clean_ideavim:
	rm -rf ~/.ideavimrc

install_onivim: clean_onivim
	@echo "Symlinking config.js"
	ln -sf `pwd`/onivim/config.js ~/.oni/config.js

clean_onivim:
	rm -rf ~/.oni/config.js

install_rubyrc: clean_rubyrc
	@echo "Symlinking .gemrc"
	ln -sf `pwd`/ruby/gemrc ~/.gemrc
	@echo "Symlinking .irbrc"
	ln -sf `pwd`/ruby/irbrc ~/.irbrc
	@echo "Symlinking .pryrc"
	ln -sf `pwd`/ruby/pryrc ~/.pryrc

clean_rubyrc:
	rm -rf ~/.gemrc
	rm -rf ~/.irbc
	rm -rf ~/.pryrc

install_tmux: clean_tmux
	@echo "Symlinking .tmux.conf"
	ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf

clean_tmux:
	rm -rf ~/.tmux.conf

install_zshrc: clean_zshrc
	@echo "Symlinking .zshrc"
	ln -sf `pwd`/shell/zshrc ~/.zshrc

clean_zshrc:
	rm -rf ~/.zshrc

install_emacs: clean_emacs
	@echo "Symlinking init.el"
	ln -sf `pwd`/emacs/init.el ~/.emacs.d/init.el

clean_emacs:
	rm -rf ~/.emacs.d/init.el
