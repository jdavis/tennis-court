; A lat is a list of atoms.
;
; Run:
;   $ racket -r lists/lat.rkt
;
; Examples:
;   Input: '()
;   Output: #t
;
;   Input: '(a b c d)
;   Output: #t
;
;   Input: '(a (b) c d)
;   Output: #f
;
; Source:
;   The Little Schemer, pg. 15
(define (lat? l)
  (if (null? l)
    #t
    (if (list? (car l))
      #f
      (lat? (cdr l)))))

(define l0 '())
(define l1 '(a b c d))
(define l2 '(a (b) c d))

(display "Input List: ")
(displayln l0)

(display "Output List ")
(displayln (lat? l0))

(displayln "")

(display "Input List: ")
(displayln l1)

(display "Output List ")
(displayln (lat? l1))

(displayln "")

(display "Input List: ")
(displayln l2)

(display "Output List ")
(displayln (lat? l2))
