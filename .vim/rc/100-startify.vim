UsePlugin 'vim-startify'

" Enable Open Startify when enter `vi` on fish
" ref: https://github.com/mhinz/vim-startify/blob/master/doc/startify.txt#L309
let g:startify_session_autoload = 1

" Enable open Startify when <C-S>
nnoremap <C-s> :Startify<CR>

" ref: http://mewbies.com/acute_terminal_fun_01_get_ascii-fied_on_the_terminal.htm
" ref: https://github.com/ascii-boxes/boxes/blob/master/boxes-config
let g:startify_custom_header = ([
\'                         \\\///                         ',
\'                        / _  _ \                        ',
\'                      (| (.)(.) |)                      ',
\' +------------------.OOOo--()--oOOO.------------------+ ',
\' |               __ ___   __         __               | ',
\' |   _________ _/ /|__ \ / /______  / /_  ____ _____  | ',
\' |  / ___/ __ `/ __/_/ // //_/ __ \/ __ \/ __ `/ __ \ | ',
\' | / /__/ /_/ / /_/ __// ,< / /_/ / /_/ / /_/ / / / / | ',
\' | \___/\__,_/\__/____/_/|_|\____/_.___/\__,_/_/ /_/  | ',
\' |                   _   __                __         | ',
\' |                  / | / /__  ____ _   __/_/___ ___  | ',
\' |                 /  |/ / _ \/ __ \ | / / / __ `__ \ | ',
\' |                / /|  /  __/ /_/ / |/ / / / / / / / | ',
\' |               /_/ |_/\___/\____/|___/_/_/ /_/ /_/  | ',
\' |                                                    | ',
\' +------------------.oooO-----------------------------+ ',
\'                    (   )   Oooo.                       ',
\'                     \ (    (   )                       ',
\'                      \_)    ) /                        ',
\'                            (_/                         ',
\'',
\])
