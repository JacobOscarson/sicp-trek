10     ; [1]
; 10

(+ 5 3 4) ; [1]
; 12

(- 9 1)  ; [1]
; 8

(/ 6 2)  ; [1]
; 3

(+ (* 2 4) (- 4 6))  ; [1]
; 6

(define a 3)     ; [1]
; a   [3]

(define b (+ a 1))  ; [1]
; b   [4]

(+ a b (* a b))     ; [1]
; 19

(= a b)   ; [1]
; false      (('Value: #f'))

(if (and (> b a) (< b (* a b)))
    b
    a)    ; [0 'Value: 4': no predicate #f! mistook pred B -> #f]
; 3

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))    ; [1]
; 16

(+ 2 (if (> b a) b a))  ; [1]
; 6          [2 + 4[b]]

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))   ; [1]
; 16         [4[b] * 3+1 -> 4*4]
