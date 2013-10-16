#lang eopl

(define-datatype
  binary-tree binary-tree?
  (empty-tree)
  (extended-tree
    (val number?)
    (left-subtree binary-tree?)
    (right-subtree binary-tree?)))
