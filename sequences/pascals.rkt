; Calculate the n number of rows of Pascal's Triangle.
;
; Run:
;   $ racket -r sequences/pascals.rkt
;
; Examples:
;   Input: 1
;   Output: '((1))
;
;   Input: 4
;   Output: '((1) (1 2 1) (1 3 3 1)
(define (pascal n)
  (define (pascal-row row)
    (define last 0)
    (append
      (map (lambda (x)
             (define temp last)
             (set! last x)
             (+ temp x))
           row)
      '(1)))
  (define (pascal-iter i limit row)
    (cond
      ((= i limit) '())
      (else
        (cons
          row
          (pascal-iter (+ i 1) limit (pascal-row row))))))
  (pascal-iter 0 n '(1)))

(display "Pascal(1): ")
(displayln (pascal 1))

(display "Pascal(4): ")
(displayln (pascal 4))
