if exists('b:current_syntax')
  let s:current_syntax = b:current_syntax
  unlet b:current_syntax
endif

let b:styled_nested_syntax = 1
syn include @StyledPpxCssSyntax syntax/styled-ppx.vim
unlet b:styled_nested_syntax

syntax region styledBody start=+\(%cx\s\+\){|+ end=+|}\]+ keepend contains=@StyledPpxCssSyntax
