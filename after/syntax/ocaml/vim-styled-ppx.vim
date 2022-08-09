if exists('b:current_syntax')
  let s:current_syntax = b:current_syntax
  unlet b:current_syntax
endif

let b:styled_nested_syntax = 1
syn include @StyledPpxPayload syntax/styled-ppx-payload.vim
unlet b:styled_nested_syntax

syn region styledPpxPayload start=+"+ skip=+\\\\\|\\"+ end=+"+  keepend contains=@StyledPpxPayload,styledInterpolation contained
syn region styledPpxPayload start="{\z\([a-z_]*\)|" end="|\z1}"  keepend contains=@StyledPpxPayload,styledInterpolation contained
syn region styledPpxPayload start="{%[a-z_]\+\(\.[a-z_]\+\)\?\( \z\([a-z_]\+\)\)\?|" end="|\z1}" keepend contains=@StyledPpxPayload,styledInterpolation contained
syn region styledPpxEncl start=+\[%cx+ end=+\]+ keepend contains=styledPpxPayload

hi def link styledPpxEncl Keyword
