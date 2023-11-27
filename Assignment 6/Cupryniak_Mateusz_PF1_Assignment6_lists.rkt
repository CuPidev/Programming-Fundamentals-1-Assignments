#lang htdp/isl+
;(require racket/list)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; Section 2.1 - Programming with Lists ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;; 2.1.1
;; add-5: List<Number> -> List<Number>
;; The function takes in a list of numbers and returns the list with every number increased by 5
;; (define (add-5 list) list)
;(check-expect (add-5 (list 1 2 3)) (list 1 7 8))
;(check-expect (add-5 (list -2 -2 0)) (list 3 3 5))

(define (add-5 numery) (list (+ 5 (first numery)) (if (not (eq? (rest numery) '())) (add-5 (rest numery)) '()) ))
(add-5 (cons 1 (cons 1 (cons 2 '()))))

;;;;; 2.1.2
;; add-title: List<String> String -> List<String>
;; The function takes in a list of person names and a string representing a title and returns a list of the names with the title added as a prefix to every name
;; (define (add-title list title) list)
;(check-expect (add-title (list 1 2 3)) (list 1 7 8))
;(check-expect (add-title (list -2 -2 0)) (list 3 3 5))

;;;;; 2.1.3
;; min-list: List<Number> -> Number
;; The function takes in a non-empty list of numbers and returns the smallest one of them
(define (min-list list2) 1)

;;;;; 2.1.4
;; 2min-list: List<Number> -> Number
;; The function takes in a list with at least two numbers and returns the two smallest numbers


;;;;; 2.1.5
;; min-x: List<Posn> -> Posn
;; The function takes in a list of posns and returns the posn with the smallest x value

;;;;; 2.1.6
;; self-powers: number -> List<Number>
;; The function takes in a natural number n and returns a list of numbers from n to the nth power to 1^1.
;; (define (self-powers n) (list 1 2 3))

(check-expect (self-powers 4) (list 256 27 4 1))
(check-expect (self-powers 2) (list 4 1))
(check-expect (self-powers 3) (list 27 4 1))
(check-expect (self-powers 1) (list 1))

;; Template
; (define (self-powers n)
;     (list ...))

(define (self-powers n)
  (list (expt n n) (if
                    (not (eq? n 1))
                    (self-powers (- n 1))
                    '()) ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; Section 2.2 - Programming with list abstractions ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;; 2.2.7
;; self-powers: number -> List<Number>

;;;;; 2.2.8
;; self-powers: number -> List<Number>