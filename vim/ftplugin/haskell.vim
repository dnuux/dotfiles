syntax match hsStructure
  \ "\\\ze[[:alpha:][:space:]_([]"
  \ display conceal cchar=λ

syntax match hsOperator
  \ "\s\.\_s"ms=s+1,me=e-1
  \ display conceal cchar=∘

setlocal conceallevel=2

highlight! link Conceal Operator
