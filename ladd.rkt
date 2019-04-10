#lang racket
; Helper function for poly_add. x and y are numbers in a list.
(define (ladd x y)
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
  (ladd (cdr x) (cdr y))))))