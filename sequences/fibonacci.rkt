; Calculate the nth Fibonacci number.
;
; Run:
;   $ racket -r sequences/fibonacci.rkt
;
; Examples:
;   Input: 0
;   Output: 0
;
;   Input: 1
;   Output: 1
;
;   Input: 2
;   Output: 1
;
;   Input: 3
;   Output: 2
;
;   Input: 4
;   Output: 5

(define
  (fibonacci n)
  (cond
    ((= n 0) 0)
    ((= n 1) 1)
    (else
      (+
        (fibonacci (- n 2))
        (fibonacci (- n 1))))))

(display "Fibonacci(0) = ")
(displayln (fibonacci 0))

(display "Fibonacci(1) = ")
(displayln (fibonacci 1))

(display "Fibonacci(2) = ")
(displayln (fibonacci 2))

(display "Fibonacci(3) = ")
(displayln (fibonacci 3))

(display "Fibonacci(4) = ")
(displayln (fibonacci 4))
