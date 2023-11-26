#lang racket


;;;; 2.1.1
;; Function add-5
;; FILEPATH: /Users/mati/Desktop/Programming Fundamentals 2023/Assignments/Assignment 6/main.rkt
;; BEGIN: abpxx6d04wxr
(define (add-5-to-list lst)
  (map (lambda (x) (+ x 5)) lst))
;; END: abpxx6d04wxr

(define (add x y)
  (+ x y))

(define (subtract x y)
  (- x y))

(define (multiply x y)
  (* x y))

(define (divide x y)
  (/ x y))

(define result (add 5 3))
(displayln result)
