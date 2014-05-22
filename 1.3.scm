; Define a procedure that takes three numbers as arguments and returns
; the sum of the squares of the two larger numbers.

(define (square x) (* x x))

(define (try cand first second)
  (if
   (and (> cand first) (> cand second))
   (square cand)
   0
   )
  )

; Combinations:
; abc acb
; bac bca
; cab cba

(define (sicp13-3 a b c)
  (+ (try a b c) (try a c b)
     (try b a c) (try b b a)
     (try c a b) (try c b a)) )

; Checked http://community.schemewiki.org/?sicp-ex-1.3
; [0] - this approach doesn't work. Bad arithmetic.
