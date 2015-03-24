# vim-dragvisuals

Created and maintained by Damian Conway.

Demo : Damian Conway, "More Instantly Better Vim" - OSCON 2013

Imported from :

https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/plugin/dragvisuals.vim

Load with a plugin manager like pathogen or vundle.

Add the following to your .vimrc

```
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1
```

Or, if you use the arrow keys for normal motions, choose four other keys for
block dragging. For example:

```
vmap  <expr>  h        DVB_Drag('left')
vmap  <expr>  l        DVB_Drag('right')
vmap  <expr>  j        DVB_Drag('down')
vmap  <expr>  k        DVB_Drag('up')
```

