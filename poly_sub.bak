#lang racket
(define (poly_sub x y)
  ; If x is not there then just output y.
  (if (null? x)
      y
  ; If y is not there then just output x.
  (if (null? y)
      x
  ; Start adding numbers in the list.
  (cons (- (car x) (car y))
  ; Recursion under end of list.
  (poly_sub (cdr x) (cdr y))))))