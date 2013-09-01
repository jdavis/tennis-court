; Returns the list with the first occurrence of the given atom removed.
;
; Run:
;   $ racket -r lists/rember.rkt
;
; Examples:
;   Input: a, '()
;   Output: '()
;
;   Input: a, '(b a c)
;   Output: '(b c)
;
;   Input: a, '(b a c a d)
;   Output: '(b c a d)
;
; Source:
;   The Little Schemer, pg. 33
(define (rember? a l)
  (cond
    ((null? l) l)
    ((eq? a (car l)) (cdr l))
    (else (cons
            (car l)
            (rember? a (cdr l))))))

(define a 'a)
(define l0 '())
(define l1 '(b a c))
(define l2 '(b a c a d))

(display "Input List: ")
(displayln l0)

(display "Output List: ")
(displayln (rember? a l0))

(displayln "")

(display "Input List: ")
(displayln l1)

(display "Output List: ")
(displayln (rember? a l1))

(displayln "")

(display "Input List: ")
(displayln l2)

(display "Output List: ")
(displayln (rember? a l2))
