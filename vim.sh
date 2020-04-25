#!bin/bash
apt-get update -y && apt-get install apt-utils vim git curl ack-grep -y

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

rm ~/.vimrc
echo "let NERDTreeShowHidden=1" >> ~/.vimrc
echo "autocmd StdinReadPre * let s:std_in=1" >> ~/.vimrc
echo "autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && ! exists(\"s:std_in\") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif" >> ~/.vimrc
echo "autocmd bufenter * if (winnr(\"$\") == 1 && exists(\"b:NERDTree\") && b:NERDTree.isTabTree()) | q | endif" >> ~/.vimrc
echo "execute pathogen#infect()" >> ~/.vimrc

git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim