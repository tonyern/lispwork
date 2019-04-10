#lang racket
(define (rem0atb x)
  (if (null? x)
      x
  (if (= (car x) 0)
  (rem0atb (cdr x)) x)))