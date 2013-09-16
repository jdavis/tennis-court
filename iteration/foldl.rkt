; Similar to map, but instead folds from the left down to the
; base value provided.
;
; Run:
;   $ racket -r iteration/foldl.rkt
;
; Examples:
;   Input: - 0 '(4 3 2 1)
;   Output: -2
;
; Source:
;   Racket Builtin
;   http://docs.racket-lang.org/reference/pairs.html
(define (foldll op base lst)
  (define (rdr lst)
    (cond
      ((null? (cdr lst)) '())
      (else
        (cons
          (car lst)
          (rdr (cdr lst))))))
   (cond
     ((null? lst) base)
     (else
       (op
         (last lst)
         (foldll
           op
           base
           (rdr lst))))))
