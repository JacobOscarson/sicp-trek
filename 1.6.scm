(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-caluse)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter-lab guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter-lab (improve guess x)
                                x)))

(define (sqrt-lab x)
  (sqrt-iter-lab 1.0 x))

;; new-if leads to inifinte recursions beacuse cond will continue to
;; evaluate all predicates until it has tried them all. In the square
;; root case here, that will continue to trigger sqrt-iter
;; indefinitely.
