" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'glacambre/firenvim'


" Initialize plugin system
call plug#end()

" set guifont=Iosevka\ 17


let g:firenvim_config = {
\	'localSettings': {
\		'.*': {
\			'selector': 'textarea',
\			'priority': 0,
\		},
\		'translate\.google\.com': {
\			'selector': '',
\			'priority': 1,
\		},
\		'lodash\.com*': {
\			'selector': '',
\			'priority': 1,
\		},
\	}
\}

" au BufEnter github.com_*.txt set background=light

