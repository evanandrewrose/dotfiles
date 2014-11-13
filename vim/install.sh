# install vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install bundles
vim +PluginInstall +qall

# compile clang_complete plugin for vim
make -C ~/.vim/bundle/clang_complete

# compile command-t plugin extension
cd ~/.vim/bundle/Command-T/ruby/command-t/
ruby extconf.rb
make
