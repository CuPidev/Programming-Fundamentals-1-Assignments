#lang htdp/isl+
(require racket/list)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; Section 2.1 - Programming with Lists ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;; 2.1.1
;; add-5: List<Number> -> List<Number>
;; The function takes in a list of numbers and returns the list with every number increased by 5
;; (define (add-5 list) list)
(check-expect (add-5 (list 1 2 3)) (list 1 7 8))
(check-expect (add-5 (list -2 -2 0)) (list 3 3 5))

(define (add-5 list) (list (+ 5 (first list)) (add-5 (rest list))))
(add-5 (list 1 2 3))

;;;;; 2.1.2
;; add-title: List<String> String -> List<String>
;; The function takes in a list of person names and a string representing a title and returns a list of the names with the title added as a prefix to every name
;; (define (add-title list title) list)
(check-expect (add-title (list 1 2 3)) (list 1 7 8))
(check-expect (add-title (list -2 -2 0)) (list 3 3 5))

;;;;; 2.1.3
;; min-list: List<Number> -> Number
;; The function takes in a list of numbers and returns the smallest one of them
(define (min-list list) 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; Section 2.2 - Programming with list abstractions ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
