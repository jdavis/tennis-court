; Inserts a given atom after the other given atom into the given list.
;
; Run:
;   $ racket -r lists/insertr.rkt
;
; Examples:
;   Input: b, c, '(a b d)
;   Output: '(a b c d)
;
;   Input: b, c, '(a d)
;   Output: '(a d)
;
; Source:
;   The Little Schemer, pg. 43
(define (insertr new old lat)
  (cond
    ((null? lat) '())
    ((eq? old (car lat))
     (cons old
           (cons new (cdr lat))))
    (else (cons
            (car lat)
            (insertr new old (cdr lat))))))

(define b 'b)
(define c 'c)
(define l '(a b d))

(display "Input List: ")
(displayln l)

(display "Inserting: ")
(displayln c)

(display "After: ")
(displayln b)

(display "Output List: ")
(displayln (insertr c b l))

(define b 'b)
(define c 'c)
(define l '(a d))

(display "Input List: ")
(displayln l)

(display "Inserting: ")
(displayln c)

(display "After: ")
(displayln b)

(display "Output List: ")
(displayln (insertr c b l))
