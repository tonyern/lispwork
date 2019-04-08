#lang racket
(define (poly_add x y)
  ; Code below was provided in class.
  ; If x is not there then just output y.
  (if (null? x)
      y
  ; If y is not there then just output x.
  (if (null? y)
      x
  ; Start adding numbers in the list.
  (cons (+ (car x) (car y))
  ; Recursion under end of list.
  (poly_add (cdr x) (cdr y))))))

