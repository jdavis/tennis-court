; Uses only lambdas to implement recursion.
;
; Run:
;   Don't run this, it just is an infinite loop that prints "MIND BLOWN" over
;   and over.
;
((lambda (f) (f f))
 (lambda (self)
   (displayln "MIND BLOWN")
   (self self)))
