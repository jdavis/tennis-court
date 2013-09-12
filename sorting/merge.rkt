; Implementation of the basic merge sort.
;
; Takes an unsorted list and returns a sorted one.
(define (merge-sort lst)
  (define (merge first second)
    (cond
      ((null? first) second)
      ((null? second) first)
      ((< (car first) (car second))
       (cons
         (car first)
         (merge (cdr first) second)))
      (else
       (cons
         (car second)
         (merge first (cdr second))))))
  (let ([mid (quotient (length lst) 2)])
    (cond
      ((= mid 0) lst)
      (else
        (merge
          (sort-ascend (take lst mid))
          (sort-ascend (drop lst mid)))))))
