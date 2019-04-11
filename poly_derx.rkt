#lang racket
(define (poly_derx x)
  ; If x is null then output it but don't continue.
  (if (null? x) null
  (if (null? (car x)) (poly_derx (cdr x))
  (append (list (derx (car x)))
  ; Checks for end of list x.
  (if (null? (cdr x)) null
  ; Move on to the next element in the list until null.
  (poly_derx (cdr x)))))))

; Helper function for derx.
; Result is the compution of values.
; x is current value in list.
; i is current position in list.
(define (derx_helper result x i)
  (if (null? x) (append result x)
  ; If number is the first in list and a constant then it would be zero but will not appear in output.
  (if (= i 0) (derx_helper null (cdr x) (+ i 1))
  (derx_helper (append result (list (* i (car x)))) (cdr x) (+ i 1)))))

; Helper function for poly_derx.
(define (derx x)
  ; If x is null then don't continue to computing.
  (if (null? x) null
  (derx_helper '() x 0)))

; Removing 0's in the list just contain 0.
(define (rem0atb x)
  (if (null? x)
      x
  (if (= (car x) 0)
  (rem0atb (cdr x)) x)))