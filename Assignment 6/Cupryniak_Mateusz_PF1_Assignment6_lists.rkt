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

(define (add-5 numery) (list (+ 5 (first numery)) (if
                                                   (not (eq? (rest numery) '()))
                                                   (add-5 (rest numery))
                                                   '()) ))
(add-5 (list 2 3 4))

;;;;; 2.1.2
;; add-title: List<String> String -> List<String>
;; The function takes in a list of person names and a string representing a title and returns a list of the names with the title added as a prefix to every name
;; (define (add-title name-list title) list)
(check-expect (add-title (list "Matteo" "Francesco") "Dr.") (list "Dr. Matteo" "Dr. Francesco"))

(define (add-title name-list title)
  (list (string-append title " " (first name-list)) (if
                                                     (not (eq? (rest name-list) '()))
                                                     (add-title (rest name-list) title)
                                                     '())))

(add-title (list "Matteo" "Francesco") "Dr.")
;;;;; 2.1.3
;; min-list: List<Number> -> Number
;; The function takes in a non-empty list of numbers and returns the smallest one of them
;; (define (min-list number-list) 1)

(check-expect (min-list (list 1 2 3)) 1)
(check-expect (min-list (list 3 2 2)) 2)

(define (min-list number-list)
  (cond
    [(eq? (length number-list) 1) (first number-list)]
    [(< (first number-list) (min-list (rest number-list)))  (first number-list)]
    [else (min-list (rest number-list))]))

(min-list (list 100 2 5))
;;;;; 2.1.4
;; 2min-list: List<Number> -> Number
;; The function takes in a list with at least two numbers and returns the two smallest numbers
;; (define (2min-list number-list) (list 1 2))

(check-expect (2min-list (list 1 2 3)) (list 1 2))
(check-expect (2min-list (list 3 2 2)) (list 2 2))

(define (2min-list number-list)
  (list (min-list number-list) (min-list (remove (min-list number-list) number-list))))

(2min-list (list 100 2 5 4 8 1 19 200))
;;;;; 2.1.5
;; min-x: List<Posn> -> Posn
;; The function takes in a list of posns and returns the posn with the smallest x value
;; (define (min-x posn-list) (make-posn 1 1))

;(check-expect (min-x (list (make-posn 1 2) (make-posn 2 3) (make-posn 3 4))) (make-posn 1 2))

;; Template
; define (mix-x list-posn)
;   (if (> (posn-x ...)) (posn-x ...) (min-x ...)))

;(define (min-x posn-list)
;l(if (> (posn-x (first posn-list)) (posn-x (first (rest posn-list)))) (first posn-list)     ))

;(min-x (list (make-posn 1 2) (make-posn 2 3) (make-posn 3 4)))
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