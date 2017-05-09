" Vim color file
" Maintainer: David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>
" Last Change: 2003-04-23
" URL: http://trific.ath.cx/Ftp/vim/colors/embers.vim

" This color scheme uses a embers background (what you've expected when it's
" called embers?).
"
" Note: Only GUI colors differ from default, on terminal it's just `light'.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

" ! black
" *.color0:       #202020
" *.color8:       #404040

" ! red
" *.color1:       #bf3f34
" *.color9:       #ff6c5f

" ! green
" *.color2:       #707d22
" *.color10:      #b8ca4b

" ! yellow
" *.color3:       #bf7a29
" *.color11:      #c7a551

" ! blue
" *.color4:       #627a92
" *.color12:      #95b9de
" 
" ! magenta
" *.color5:       #75507b
" *.color13:      #ad7fa8
" 
" ! cyan
" *.color6:       #757978
" *.color14:      #9fa590
" 
" ! white
" *.color7:       #b2a191
" *.color15:      #e8d0c3


let colors_name = "embers"

" hi Normal guibg=Embers guifg=Black
hi SpecialKey term=bold ctermfg=12
" guifg=Blue
hi NonText term=bold cterm=bold ctermfg=6
" gui=bold guifg=Blue
hi Directory term=bold ctermfg=12
" guifg=Blue
hi ErrorMsg term=standout cterm=bold ctermfg=15 ctermbg=9
" gui=bold guifg=White guibg=Red
" Why this has to be reversed to match 'Search' is beyond me
hi IncSearch term=bold ctermfg=8 ctermbg=White
" gui=reverse
hi Search term=bold ctermfg=White ctermbg=8
" gui=reverse
hi MoreMsg term=bold ctermfg=15 ctermbg=8
" gui=bold guifg=SeaGreen
hi ModeMsg term=bold cterm=bold ctermfg=15 ctermbg=8
" gui=bold
hi LineNr term=underline ctermfg=11
" guifg=Red3
hi Question term=standout ctermfg=10
" gui=bold guifg=SeaGreen
" This has to be reversed too, like incsearch
hi StatusLine term=bold,reverse ctermfg=8 ctermbg=White
" gui=bold guifg=White guibg=Black
hi StatusLineNC term=reverse cterm=reverse
" gui=bold guifg=Embers guibg=Gray45
hi VertSplit term=reverse cterm=reverse
" gui=bold guifg=White guibg=Gray45
hi Title term=bold ctermfg=13
" gui=bold guifg=DeepPink3
hi Visual term=reverse ctermfg=15 ctermbg=8 
" cterm=reverse gui=reverse guifg=Grey80 guibg=fg
hi VisualNOS term=bold,underline cterm=bold,underline
" gui=bold,underline
hi WarningMsg term=standout cterm=bold ctermfg=9 ctermbg=8
" gui=bold guifg=Red
hi WildMenu term=standout ctermfg=9 ctermbg=8
" guifg=Black guibg=Yellow
hi Folded term=standout ctermfg=15 ctermbg=8
" guifg=Black guibg=#e3c1a5
hi FoldColumn term=standout ctermfg=15 ctermbg=8
" guifg=DarkBlue guibg=Gray80
hi DiffAdd term=bold ctermfg=0 ctermbg=10
" guibg=White
hi DiffChange term=bold ctermbg=8
" guibg=#edb5cd
hi DiffDelete term=bold ctermfg=0 ctermbg=9
" gui=bold guifg=LightBlue guibg=#f6e8d0
hi DiffText term=reverse ctermbg=8
" gui=bold guibg=#ff8060
" hi Cursor guifg=bg guibg=fg
" hi lCursor guifg=bg guibg=fg

" Colors for syntax highlighting
hi Comment term=bold ctermfg=6
" guifg=#406090
hi Constant term=underline ctermfg=1
" guifg=#c00058
hi Special term=bold ctermfg=5
" guifg=SlateBlue
hi Identifier term=underline ctermfg=7
"guifg=DarkCyan
hi Statement term=bold ctermfg=3
" gui=bold guifg=Brown
hi PreProc term=underline ctermfg=4
" guifg=Magenta3
hi Type term=underline ctermfg=2
" gui=bold guifg=SeaGreen
hi Ignore cterm=bold ctermfg=4 ctermbg=8
" guifg=bg
hi Error term=reverse cterm=bold ctermfg=9 ctermbg=8
" gui=bold guifg=White guibg=Red
hi Todo term=standout ctermfg=15 ctermbg=8
" guifg=Blue guibg=Yellow
hi Pmenu ctermfg=7 ctermbg=0
hi PmenuSel ctermfg=15 ctermbg=8
