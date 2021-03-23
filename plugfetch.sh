#!/bin/bash

workdir=/tmp/bundle
today=$(date +%Y%m%d)

function get() {
    repo=$1; name=$2
    n1="${repo##*/}"; n2=${n1,,};      n3="${n2%.git}"; n4="${n3%.vim}"
    n5="${n4%-vim}";  n6="${n5#vim-}"; n7="${n6#vim_}"; n8="${n7#plugin-}"
    name=$n8
    rm -rf $name
    git clone --recursive $repo $name
    cd $name
    # The best I've found to handle different tag types (lightweight or not)
    # and different naming schemes (sometimes, both vary in the same repo) :
    relver=$( git log --date-order --graph --tags --simplify-by-decoration \
        --format=format:'%d' | egrep -m1 -o '[v0-9\.]+[^,) ]*')
    if [ -z $relver ] || [ $name == 'flake8' ] || [ $name == 'jedi' ] || [ $name == 'indent-object' ]; then
        relver=$today
    else
        git checkout -b $relver tags/$relver
    fi
    rm -rf .git .gitignore .gitmodules
    [ $name == 'jedi' ] && { rm -rf jedi/.gitignore jedi/.gitignore jedi/.git; }
    if [ $name == 'flake8' ];then
       find ftplugin -name '.git*' -exec rm {} \;
    fi
    printf "%-25s : ${relver}\n" $name | tee -a ../releases
    echo
    cd - &>/dev/null
}

rm -rf $workdir
mkdir -p $workdir

cd $workdir

touch releases

get https://github.com/MarcWeber/vim-addon-mw-utils.git
get https://github.com/airblade/vim-rooter.git
get https://github.com/andviro/flake8-vim.git
get https://github.com/atdt/vim-mediawiki.git
get https://github.com/bling/vim-airline.git
get https://github.com/davidhalter/jedi-vim.git
get https://github.com/drmikehenry/vim-fontsize.git
get https://github.com/elzr/vim-json.git
get https://github.com/garbas/vim-snipmate.git
get https://github.com/godlygeek/tabular.git
get https://github.com/hashivim/vim-terraform.git
get https://github.com/honza/vim-snippets.git
get https://github.com/kien/ctrlp.vim.git
get https://github.com/lofic/asciitune.git
get https://github.com/lofic/revealhugosnippets.git
get https://github.com/lofic/vim-autoclose.git
get https://github.com/lofic/vim-dragvisuals.git
get https://github.com/majutsushi/tagbar.git
get https://github.com/michaeljsmith/vim-indent-object.git
get https://github.com/mileszs/ack.vim.git
get https://github.com/rodjek/vim-puppet.git
get https://github.com/scrooloose/nerdtree.git
get https://github.com/scrooloose/syntastic.git
get https://github.com/techlivezheng/vim-plugin-minibufexpl.git
get https://github.com/tomtom/tlib_vim.git
get https://github.com/tpope/vim-cucumber.git
get https://github.com/tpope/vim-endwise.git
get https://github.com/tpope/vim-fugitive.git
get https://github.com/tpope/vim-pathogen.git
get https://github.com/tpope/vim-surround.git
get https://github.com/tpope/vim-unimpaired.git
get https://github.com/vim-airline/vim-airline-themes.git
get https://github.com/vim-ruby/vim-ruby.git
get https://github.com/vim-scripts/DeleteTrailingWhitespace.git
get https://github.com/vim-scripts/ScrollColors.git
get https://github.com/vim-scripts/VisIncr.git
get https://github.com/xolox/vim-easytags.git
get https://github.com/xolox/vim-misc.git
# taglist
tlrepo=http://sourceforge.net/projects/vim-taglist
wget $tlrepo/files/latest/download?source=files -O taglist.zip
unzip taglist.zip -d taglist
rm -f taglist.zip
tlver=$(awk '/Version/ {print $3}' taglist/plugin/taglist.vim)
printf "%-25s : ${tlver}\n" "taglist" | tee -a releases

# asciidoc
sudo apt-get -y install asciidoc
mkdir -p asciidoc/ftdetect
mkdir -p asciidoc/syntax
cp /usr/share/vim/addons/ftdetect/asciidoc_filetype.vim asciidoc/ftdetect/
cp /usr/share/vim/addons/syntax/asciidoc.vim asciidoc/syntax/
adver=$(dpkg -s asciidoc | awk '/Version:/ {print $2}')
printf "%-25s : ${adver}\n" "asciidoc" | tee -a releases

# mcollective ddl
mkdir -p mcollective/ftdetect
mkdir -p mcollective/snippets
mcrepo=https://raw.github.com/puppetlabs/marionette-collective
wget $mcrepo/master/ext/vim/mcollective_ddl.snippets \
 -O mcollective/snippets/mcollective_ddl.snippets
echo 'au BufRead,BufNewFile *.ddl  setfiletype mcollective_ddl' > \
 mcollective/ftdetect/mcollective_ddl.vim
printf "%-25s : ${today}\n" "mcollective" | tee -a releases

# avoid collision between the puppet plugin and the collection of snippets
rm -f $workdir/puppet/snippets/puppet.snippets

echo "==== Summary ===="

sort releases -o releases
cat releases

cd - &>/dev/null
