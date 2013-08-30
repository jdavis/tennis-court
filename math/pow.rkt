(define (pow x y)
  (if (< y 1)
    1
    (* x (pow x (- y 1)))))
