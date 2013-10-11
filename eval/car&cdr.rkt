; Create a car&cdr procedure that takes in an atom, a list, and an error.  The
; procedure should return a datum procedure that takes one argument, a list,
; and performs cars and cdrs until the first place that the given atom occurs.
;
; Run:
;   $ racket -r eval/car\&cdr.rkt
;
; Examples:
;   > (car&cdr a '(c (b (a))) "Error")
;   '(lambda (lst) (car (cdr (cdr lst))))
;
;   > (car&cdr x '(c (b (a))) "Error")
;   "Error"
;
; Source:
;   Given as an extra credit problem on a midterm for one of my classes.

;
; Helper Functions
;

; Function for taking input like:
;   (cdr cdr cdr car)
;
; and produces output like:
;
; (car (cdr (cdr (cdr lst))))
(define (recurse-reverse lst result)
  (cond
    ((null? result)
     (recurse-reverse (cdr lst) (list (car lst) 'lst)))
    ((null? lst) result)
    (else
      (recurse-reverse
        (cdr lst)
        (cons
          (car lst)
          (list result))))))

; Determines if a given atom is in a list
(define (in? s lst)
(cond
  ((null? lst) #f)
  ((list? (car lst))
   (or (in? s (car lst))
       (in? s (cdr lst))))
   ((eq? s (car lst)) #t)
   (else
     (in? s (cdr lst)))))

;
; Problem Procedure
;

(define (car&cdr s lst err)
  (define (car&cdr-rec lst)
    (cond
      ((not (in? s lst)) err)
      ((null? lst) err)
      ((and (list? (car lst)) (in? s (car lst))
            (cons
              'car
              (car&cdr-rec (car lst)))))
      ((eq? s (car lst)) '(car))
      (else
        (cons
          'cdr
          (car&cdr-rec (cdr lst))))))
  (if (not (in? s lst))
    err
    (list
      'lambda
      '(lst)
      (recurse-reverse (car&cdr-rec lst) '()))))

;
; Very basic testing. I should look up Scheme unit tests...
;

(define lst '(0 1 2 (3 4 5) 6 (7 (8)) 9))

(for ([i (range 10)])
   (let ([e (car&cdr i lst "error")])
     (display "Value at i equals ")
     (display i)
     (display "?: ")
     (displayln (eq? ((eval e) lst) i))
     (display "\t")
     (displayln e)))
