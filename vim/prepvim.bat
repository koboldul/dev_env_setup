mkdir %USERPROFILE%\vimfiles\bundle
mkdir %USERPROFILE%\vimfiles\autoload

cd %USERPROFILE%\vimfiles\bundle

git clone https://github.com/PProvost/vim-ps1.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/morhetz/gruvbox.git
git clone https://github.com/elixir-lang/vim-elixir.git 
cd ..

curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim
