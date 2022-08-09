if exists('b:current_syntax')
  let s:current_syntax = b:current_syntax
  unlet b:current_syntax
endif

let b:styled_nested_syntax = 1
syn include @CssPayload syntax/styled-ppx-payload.vim
unlet b:styled_nested_syntax

syn region styledPpxPayload start=+"+ skip=+\\\\\|\\"+ end=+"+  keepend contains=@CssPayload contained
syn region styledPpxPayload start="{\z\([a-z_]*\)|" end="|\z1}"  keepend contains=@CssPayload contained
syn region styledPpxPayload start="{%[a-z_]\+\(\.[a-z_]\+\)\?\( \z\([a-z_]\+\)\)\?|" end="|\z1}" keepend contains=@StyledPpxPayload contained

syn region styledPpxEncl start=+%\(styled.[a-zA-Z]*\|css\|cx\)(\s*\(`\|"\)+ end=+\(`\|"\)\s*)+ keepend contains=@CssPayload

hi def link styledPpxEncl Keyword
