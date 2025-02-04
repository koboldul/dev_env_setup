mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim  https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir

cp .vimrc "$HOME"

