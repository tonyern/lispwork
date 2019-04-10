#lang racket
(define (poly_add x y)
  ;(rem0atb (car x))
  ;(rem0atb (car y))
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
  ; Recursion until end of list.
  (ladd (cdr x) (cdr y))))))

; Removing 0's in the list just contain 0.
(define (rem0atb x)
  (if (null? x)
      x
  (if (= (car x) 0)
  (rem0atb (cdr x)) x)))

; Adding stuff to a list.
(define (revl l)
  (if (null? l)
      l
  (append (revl (cdr l))
  (list (car l)))))