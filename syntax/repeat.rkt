; Create a simple repeat statement using define-syntax-rule.
;
; Run:
;   $ racket -r syntax/repeat.rkt
;
; Example:
;   > (repeat (set! x (+ x 1)) until (> x 10))
;   0
;   > x
;   11
;
; Source:
;   Some imperative languages.
(define-syntax-rule (repeat body until condition)
  ((lambda (f) (f f))
   (lambda (repeat-rec)
     body
     (cond
       ((not condition)
        (repeat-rec repeat-rec))
       (else 0)))))
