; Reverse a list.
;
; Run:
;   $ racket -r lists/reverse.rkt
;
; Example:
;   Input: '(a b c d)
;   Output: '(d c b a)
;   Process: Use append to create the list in reverse.
;   Example: (append (append (append (append '(d) '()) '(c)) '(b)) '(a))
(define (list-reverse l)
  (if (null? l)
    '()
    (append (list-reverse (cdr l))
          (list (car l)))))

(define l '(a b c d))

(display "Input List: ")
(displayln l)

(display "Output List ")
(displayln (list-reverse l))
