if executable('ag')
  " use ggreer/the_silver_searcher in ack.vim
  let g:ackprg = 'ag --vimgrep -i'

  " include hidden files in search, ignore .git
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif
