; Calculate the power of a given base.
;
; Run:
;   $ racket -r math.rkt
;
; Examples:
;   Input: 2, 6
;   Output: 64
;
;   Input: 3, 3
;   Output: 27
(define (pow x b)
  (cond
    ((< b 1) 1)
    (else (* x (pow x (- b 1))))))


(display "Power of 2^6 = ")
(displayln (pow 2 6))

(display "Power of 3^3 = ")
(displayln (pow 3 3))
