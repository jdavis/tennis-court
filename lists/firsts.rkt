; Returns the list constructed from the first atom of every given list.
;
; Run:
;   $ racket -r lists/firsts.rkt
;
; Examples:
;   Input: '((a b c) (d e f) (g h i))
;   Output: '(a d g)
;
; Source:
;   The Little Schemer, pg. 43
(define (firsts l)
  (cond
    ((null? l) '())
    (else (cons (car (car l))
                (firsts (cdr l))))))

(define l '((a b c) (d e f) (g h i)))

(display "Input List: ")
(displayln l)

(display "Output List: ")
(displayln (firsts l))
