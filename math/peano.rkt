; Calculate +, -, *, / all using incrementing/decrementing of numbers.
;
; Run:
;   $ racket -r math/peano.rkt
;
; Examples:
;

; Increment by one.
(define (++ x) (+ x 1))

; Decrement by one.
(define (-- x) (- x 1))

; Add any number of integers
(define peano+
  (lambda args
    (cond
      ((null? args) 0)
      ((= 0 (car args)) (apply peano+ (cdr args)))
      (else (++ (apply peano+ (cons
                    (-- (car args))
                    (cdr args))))))))


(define l1 '(1 2 3 4 5))
(define l2 '(1 2 3 4 5 6 7 8 9 10))

(display "Adding: 5 + 6 + 7 + 8 + 10 = ")
(displayln (peano+ 5 6 7 8 9 10))

(display "Input List: ")
(displayln l1)

(display "Sum: ")
(displayln (apply peano+ l1))

(display "Input List: ")
(displayln l2)

(display "Sum: ")
(displayln (apply peano+ l2))
