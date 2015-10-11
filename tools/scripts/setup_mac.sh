#!/bin/sh
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
# edit .profile, add
export PATH=$PATH:/Users/$USER/bin
export EDITOR='subl -w'

# run
git config --global core.editor "subl -n -w"
