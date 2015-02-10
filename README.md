# dotfiles
	ln -s ~/dotfiles/.vimrc ~/.vimrc
	ln -s ~/dotfiles/.vim ~/.vim

## pathogen.vim installation
https://github.com/tpope/vim-pathogen

	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## curl installation on Debian
	sudo -s
	apt-get update && apt-get install php5-curl
	cd /usr/local/src
	wget http://curl.haxx.se/download/curl-7.40.0.tar.gz
	tar -xvzf curl-7.40.0.tar.gz
	rm *.gz
	cd curl-7.40.0
	./configure --with-ssl (apt-get install build-essential when errors occur)
	make
	make install

## Command-T installation
https://github.com/wincent/Command-T

## Ruby installation
http://www.devops.zone/php-perl-ruby-python/installing-ruby-1-9-3-debian-squeeze-rvm/

## Plugin as a submodule
	cd ~/dotfiles
	git submodule add git://git.wincent.com/command-t.git .vim/bundle/command-t
	git submodule init

Updating:
	cd ~/dotfiles/.vim/bundle/command-t
	git pull

Switching to a specific release:
	cd ~/dotfiles/.vim/bundle/command-t
	git checkout 1.10
	
