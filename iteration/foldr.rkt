; Similar to map, but instead folds from the right down to the base value
; provided.
;
; Run:
;   $ racket -r iteration/foldr.rkt
;
; Examples:
;   Input: - 0 '(4 3 2 1)
;   Output: 2
;
; Source:
;   Racket Builtin
;   http://docs.racket-lang.org/reference/pairs.html
(define (foldrr op base lst)
   (cond
     ((null? lst) base)
     (else
       (op
         (car lst)
         (foldrr
           op
           base
           (cdr lst))))))
