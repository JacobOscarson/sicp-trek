(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The if statement will yield the operator '+' if b is positive and
; therefore add it to the first operand. Otherwise it will yield the
; operator '-', resulting in a - b (reversing a negative b): in effect
; yielding a + |b|

; Conclusion: _The operator in a form can in itself be the result of
; another expression_
