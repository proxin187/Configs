" Vim syntax file
" Language: put


if exists("b:current_syntax")
  finish
endif

set iskeyword=a-z,A-Z,-,*,_,!,@
syntax keyword Todos TODO XXX FIXME NOTE

" Language keywords
syntax keyword Keywords proc if else in end use return dup swap drop rot goto

" Comments
syntax region CommentLine start="#" end="$"   contains=porthTodos

" String literals
syntax region String start=/\v"/ skip=/\v\\./ end=/\v"/ contains=porthEscapes


" Set highlights
highlight default link Todos Todo
highlight default link Keywords Keyword
highlight default link CommentLine Comment
highlight default link String String

let b:current_syntax = "put"

