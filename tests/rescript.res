module App = %styled.div(`
  position: absolute;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  cursor: pointer;
`)

module Link = %styled.a(`
  margin: $(Size.small);

  & $(cosas) {
    font-size: 36px;
    margin-top: 16px;
  }
  &:hover {
    font-size: 44px;
  }
`)

module Line = %styled.span("display: inline;")

let fullWidth: string = %cx("
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
")
