# dotfiles
	ln -s ~/dotfiles/.vimrc ~/.vimrc
	ln -s ~/dotfiles/.vim ~/.vim

## pathogen.vim installation
https://github.com/tpope/vim-pathogen

	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## curl installation on Debian
	sudo apt-get update && apt-get install php5-curl
	cd /usr/local/src
	wget http://curl.haxx.se/download/curl-7.40.0.tar.gz
	tar -xvzf curl-7.40.0.tar.gz
	rm *.gz
	cd curl-7.6.0 (go to newly created folder)
	./configure
	(apt-get install build-essential when errors occur)
	make
	make install
	/etc/init.d/apache2 restart (?)
