; Create a simple while statement using define-syntax-rule.
;
; Run:
;   $ racket -r syntax/while.rkt
;
; Examples:
;   > (while (< x 10) (set! x (+ x 1)))
;   0
;   > x
;   10
;
; Source:
;   Racket Builtin
;   http://docs.racket-lang.org/reference/pairs.html
(define-syntax-rule (while condition body)
  ((lambda (f) (f f))
   (lambda (while-iter)
      (cond
        (condition body (while-iter while-iter))
        (else 0)))))
