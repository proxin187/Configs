" Vim syntax file
" Language: crust


if exists("b:current_syntax")
  finish
endif

set iskeyword=a-z,A-Z,48-57,*,_,!,@,#

" Types
syntax keyword CocTypes int char void

" Preprocessor
syntax keyword CocPreProc #include #link asm!

" keywords
syntax keyword CocKeywords if else return while

" Comments
syntax region CocComment start="//" end="\n"

" String literals
syntax region CocString start=/\v"/ end=/\v"/

let b:current_syntax = "crust"

" Set highlights
highlight default link CocKeywords Keyword
highlight default link CocString String
highlight default link CocComment Comment
highlight default link CocTypes Type
highlight default link CocPreProc PreProc


