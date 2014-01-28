; Calculate the factorial of a number.
;
; Run:
;   $ racket -r math/factorial.rkt
;
; Examples:
;   Input: 3
;   Output: 6
;
;   Input: 8
;   Output: 40320
(define (factorial x)
  (cond
    ((= x 2) 2)
    (else (* x (factorial (- x 1))))))


(display "Factorial of 3 = ")
(displayln (factorial 3))

(display "Factorial of 8 = ")
(displayln (factorial 8))

; Lambda

(display "Lambdas: ")
(displayln
  ((lambda (f n) (f f n))
   (lambda (self n)
     (cond
       ((= n 1) 1)
       (else

         (* n (self self (- n 1))))))
     4))
