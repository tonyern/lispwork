#lang racket
(define (poly_sub x y)
  ; Check for empty list. If empty output something and exit to the next.
  (if (null? x) y
  (if (null? y) x
  ; Appending the results into list here.
  (append (list (lsub (car x) (car y)))
  ; Checking for end of list then stopping the program.
  (if (null? (cdr x)) null
  ; Move on to the next element in the list until null.
  (poly_sub (cdr x) (cdr y)))))))

; Function that adds and puts the results into a list.
; This code was given in class.
(define (lsub_helper result x y)
  ; If x is null and y is not then add y to the list.
  (if (null? x)
      (append result y)
  ; If y is null and x is not then add x to the list.
  (if (null? y)
      (append result x)
  ; Computing the values and do a recursive call until the end.
  (lsub_helper (append result (list (- (car x) (car y)))) (cdr x) (cdr y)))))

; Function that makes an empty list with lists of x and y. Will call ladd_helper to do the adding.
; This code was given in class.
(define (lsub x y)
  (lsub_helper '() x y))

; Removing 0's in the list just contain 0.
(define (rem0atb x)
  (if (null? x)
      x
  (if (= (car x) 0)
  (rem0atb (cdr x)) x)))