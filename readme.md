# My custom vim configuration, selection of plugins and color scheme

## Installation

### On Debian-like distributions

Tested on Debian 10.

```sh
sudo apt -y install ack exuberant-ctags fonts-powerline git \
    ttf-dejavu-core ttf-dejavu-extra vim

git clone https://github.com/lofic/dotvim.git dotvim

cd dotvim

./apply.sh
```

### On RedHat-like distributions

Tested on RHEL and Centos 8.

You need some recent packages for vim, flake8, dejavu fonts...

```
sudo yum -y install ack ctags git vim-common \
    dejavu-fonts-common dejavu-sans-mono-fonts \
    powerline-fonts python-flake8 # available with EPEL

git clone https://github.com/lofic/dotvim.git dotvim

cd dotvim

./apply.sh
```

### On Microsoft Windows

Use the Windows Subsystem for Linux (WSL).

## Custom Vim initializations

`.vimrc`, with favorite settings, key mappings, custom commands and comments.


## Plugins

The installed release versions are listed in bundle/releases.

### ack

Better search in source code directories.

From
[https://github.com/mileszs/ack.vim](https://github.com/mileszs/ack.vim)


### addon-mw-utils

Needed by snipmate.

From
[https://github.com/MarcWeber/vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)


### airline

Nice and pretty status/tabline. The pretty layout needs a specific powerline
font.

From
[https://github.com/bling/vim-airline](https://github.com/bling/vim-airline)

### airline-themes

A collection of themes for vim-airline.

From
[https://github.com/vim-airline/vim-airline-themes]([https://github.com/vim-airline/vim-airline-themes)

### asciidoc

Syntax highlighter for AsciiDoc (a lightweight markup language for text based
document generation).

From AsciiDoc, last changed in AsciiDoc 8.2.0 ATOW.

### asciitune

My own customizations for asciidoc. Create/edit a revision history; build the
pdf document; show the pdf output.

From
[https://github.com/lofic/asciitune](https://github.com/lofic/asciitune)

### autoclose

Inserts matching bracket, paren, brace or quote

From
[https://github.com/vim-scripts/AutoClose](https://github.com/vim-scripts/AutoClose)

### ctrlp

Full path fuzzy file, buffer, mru, tag, ... finder written in pure Vimscript
(unlike command-t, so it runs everywhere straight away).

From
[https://github.com/kien/ctrlp.vim/](https://github.com/kien/ctrlp.vim)


### cucumber

Provides syntax highlighting, indenting, and a filetype plugin for Cucumber,
the acceptance testing framework.

From
[https://github.com/tpope/vim-cucumber](https://github.com/tpope/vim-cucumber)


### deletetrailingwhitespace

Deletes whitespace at the end of each line, on demand or automatically.

From
[https://github.com/vim-scripts/DeleteTrailingWhitespace](https://github.com/vim-scripts/DeleteTrailingWhitespace)

### dragvisuals

Drag visual blocks around.

From
[https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/dragvisuals.vim](https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/dragvisuals.vim)

Demo : Damian Conway, "More Instantly Better Vim" - OSCON 2013

### easytags

Automated tag file generation and syntax highlighting of tags in Vim.
Jump to the definition of any identifier using the Control-] mapping.

From
[https://github.com/xolox/vim-easytags](https://github.com/xolox/vim-easytags)


### endwise

Helps to end certain structures automatically, for ruby, bash, etc.

From
[https://github.com/tpope/vim-endwise](https://github.com/tpope/vim-endwise)


### flake8

Pyflakes, Pep8 and mccabe code complexity checker for Vim, bundled with latest
libraries for easy installation.

From
[https://github.com/andviro/flake8-vim](https://github.com/andviro/flake8-vim)

### fontsize

Adjust Gvim font size via keypresses.

From
[https://github.com/drmikehenry/vim-fontsize](https://github.com/drmikehenry/vim-fontsize)

### fugitive

A Git wrapper.

From
[https://github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)

v2 is needed to display the current Git branch with the airline plugin.

### indent-object

New text object representing lines of code at the same indent level.
Useful for python/vim scripts, etc. Try in normal mode : vii

From
[https://github.com/michaeljsmith/vim-indent-object](https://github.com/michaeljsmith/vim-indent-object)

### jedi

Python autocompletion and pydoc support.

From
[https://github.com/davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim)

### json

Syntax highlighting for json. Distinct highlighting of keywords vs values, JSON-specific
(non-JS) warnings, quote concealing.

From
[https://github.com/elzr/vim-json](https://github.com/elzr/vim-json)


### mcollective

MCollective ddl snippets. See the snipmate plugin below for a definition of snippet.

From
[https://raw.github.com/puppetlabs/marionette-collective/master/ext/vim](https://raw.github.com/puppetlabs/marionette-collective/master/ext/vim)


### mediawiki

MediaWiki/Wikimedia syntax highlighting and snippets.

From
[https://github.com/atdt/vim-mediawiki](https://github.com/atdt/vim-mediawiki)


### minibufexpl

Elegant buffer explorer.

From
[https://github.com/techlivezheng/vim-plugin-minibufexpl](https://github.com/techlivezheng/vim-plugin-minibufexpl)


### misc

Requirement for the easytags plugin.

From
[https://github.com/xolox/vim-misc](https://github.com/xolox/vim-misc)


### nerdtree

A file tree explorer.

From
[https://github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)


### pathogen

Plugin management.Makes it super easy to install plugins and runtime files in
their own private directories.

From
[https://github.com/tpope/vim-pathogen](https://github.com/tpope/vim-pathogen)


### puppet

Syntax highlighting and other stuff for puppet.

From
[https://github.com/rodjek/vim-puppet](https://github.com/rodjek/vim-puppet)


### revealhugosnippets

My personnal snippets to ease writing with the reveal-hugo theme.

From
[https://github.com/lofic/revealhugosnippets](https://github.com/lofic/revealhugosnippets)

### rooter

Changes the working directory to the project root (in particular for VCS
projects) when you open a file.

From
[https://github.com/airblade/vim-rooter](https://github.com/airblade/vim-rooter)


### ruby

Syntax highlighting; automatic, smart indenting; compiler plugins;
auto completion for Ruby.

From
[https://github.com/vim-ruby/vim-ruby](https://github.com/vim-ruby/vim-ruby)


### scrollcolors

A color scheme scroller/chooser/browser.

From
[https://github.com/vim-scripts/ScrollColors](https://github.com/vim-scripts/ScrollColors)


### snipmate

Provides some snippet features.
A snippet is a trigger word that will automatically expand to a full block of
code or a piece of often-typed text. You can set variables in the snippets.

From
[https://github.com/garbas/vim-snipmate](https://github.com/garbas/vim-snipmate)


### snippets

Collection of snipmate snippets for various programming languages. See snipmate
above.

From
[https://github.com/honza/vim-snippets](https://github.com/honza/vim-snippets)


### surround

Provides mappings to easily delete, change and add surroundings (parentheses,
brackets, quotes, XML tags, and more) in pairs.

From
[https://github.com/tpope/vim-surround](https://github.com/tpope/vim-surround)


### syntastic

Runs files through external syntax checkers then highlights and displays any
resulting errors.

From
[https://github.com/scrooloose/syntastic](https://github.com/scrooloose/syntastic)


### tabular

Text filtering and alignment. Nice for code, tables and data structures.

From
[https://github.com/godlygeek/tabular](https://github.com/godlygeek/tabular)

### tagbar

Browse the tags of source code files. It provides a sidebar that displays the
ctags-generated tags of the current file, ordered by scope (i.e. classes,
methods, functions...).

From
[https://github.com/majutsushi/tagbar](https://github.com/majutsushi/tagbar)

### taglist

A source code browser plugin. Uses exuberant ctags to parse source code files.

From
[http://sourceforge.net/projects/vim-taglist/](http://sourceforge.net/projects/vim-taglist/)

### terraform

Basic vim/terraform integration

From
[https://github.com/hashivim/vim-terraform](https://github.com/hashivim/vim-terraform)

### tlib

Needed by snipmate.

From
[https://github.com/tomtom/tlib_vim](https://github.com/tomtom/tlib_vim)

### unimpaired

I use it for bubbling text (exchange lines, line up or down), but it provides
many more mapping pairs.

From
[https://github.com/tpope/vim-unimpaired](https://github.com/tpope/vim-unimpaired)

### visincr

Facilitates making a column of increasing or decreasing numbers, dates, or
daynames.

From
[https://github.com/vim-scripts/VisIncr](https://github.com/vim-scripts/VisIncr)


