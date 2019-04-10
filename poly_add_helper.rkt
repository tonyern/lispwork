#lang racket
(define (poly_add x y)
  ; If x is not there then just output y.
  (if (null? x)
      y
  ; If y is not there then just output x.
  (if (null? y)
      x
  ; Get a list of values from adding contents of x and y.
  (ladd (car x) (car y))))
  ; If x is not there then just output y.
  (if (null? x)
      y
  ; If y is not there then just output x.
  (if (null? y)
      x
  (poly_add (cdr x) (cdr y)))))

; Function that adds and puts the results into a list. This code was given in class.
(define (ladd_helper result x y)
  (if (null? x)
      (append result y)
  (if (null? y)
      (append result x)
  (ladd_helper (append result (list (+ (car x) (car y)))) (cdr x) (cdr y)))))

; Function that makes an empty list with lists of x and y. Will call ladd_helper to do the adding. Code was given in class.
(define (ladd x y)
  (ladd_helper '() x y))