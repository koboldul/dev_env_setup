mkdir %USERPROFILE%\vimfiles\bundle
mkdir %USERPROFILE%\vimfiles\autoload

cd %USERPROFILE%\vimfiles\bundle

git clone https://github.com/PProvost/vim-ps1.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/morhetz/gruvbox.git

cd ..

curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim
