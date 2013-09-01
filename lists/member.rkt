; Returns whether or not a given atom is in a list.
;
; Run:
;   $ racket -r lists/member.rkt
;
; Examples:
;   Input: a, '()
;   Output: #f
;
;   Input: a, '(a b c d)
;   Output: #t
;
;   Input: a, '((a) b c d)
;   Output: #f
;
; Source:
;   The Little Schemer, pg. 22
(define (member? a l)
  (cond
    ((null? l) #f)
    ((eq? a (car l)) #t)
    (else (member? a (cdr l)))))

(define a 'a)
(define l0 '())
(define l1 '(a b c d))
(define l2 '((a) b c d))

(display "Input List: ")
(displayln l0)

(display "Output List ")
(displayln (member? a l0))

(displayln "")

(display "Input List: ")
(displayln l1)

(display "Output List ")
(displayln (member? a l1))

(displayln "")

(display "Input List: ")
(displayln l2)

(display "Output List ")
(displayln (member? a l2))
