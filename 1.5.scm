(define (p) (p))

;; `p' is defined to be an infinite recursion. Any attempt to apply
;; `p' will result in the interpreter getting stuck in an infinite
;; loop.

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; Evaluating this expression under will not return since it will trigger
;; the infinite loop caused by `p' before reaching application
;; (Application of `p' will happen before application of `test').

;; In the case of normal order application evaluation the expression
;; would yield 0, since `p' need not be applied until it's value would
;; be needed (in this case never).
