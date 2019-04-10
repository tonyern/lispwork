#lang racket
(define (poly_sub x y)
  ; If x is not there then just output y.
  (if (null? x)
      y
  ; If y is not there then just output x.
  (if (null? y)
      x
  (lsub (car x) (car y))))
  ; If x is not there then just output y.
  (if (null? x)
      y
  ; If y is not there then just output x.
  (if (null? y)
      x
  (poly_sub (cdr x) (cdr y)))))

; Helper function for poly_add. x and y are numbers in a list.
(define (lsub x y)
  ; Code below was provided in class.
  ; If x is not there then just output y.
  (if (null? x)
      y
  ; If y is not there then just output x.
  (if (null? y)
      x
  ; Start adding numbers in the list.
  (cons (- (car x) (car y))
  ; Recursion until end of list.
  (lsub (cdr x) (cdr y))))))