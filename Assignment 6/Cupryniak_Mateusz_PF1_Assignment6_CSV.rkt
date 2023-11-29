#lang htdp/isl+
(require racket/struct)
(require 2htdp/batch-io)
(require racket/string)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; Section 2.3 - working with CSV files ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;; 2.3.9 ;;;;;;;;;
;; Data type definition:
;; Record - a data type containing any row of date from a CSV file
;; It consists of an any number of fields each one of which is composed of:
;; - field name (String)
;; - field value (any type)
(define-struct record [field])
(define Jack (make-record (list (list "name" "Jack") (list "surname" "test") (list "age" 23) (list "birthplace" "Lugano") (list "occupation" "Banker"))))

;;;;;; 2.3.10 ;;;;;;;;;
;; get-field: Record String -> String
;; The function takes a field name and a Record and returnss the content of the field with the given name if it exists or #false if it does not exist.
;; (define (get-field field-name record) #false)

(check-expect (get-field "name" Jaca) "jaca")

(define (get-field field-name record)
  (local ((define answer (filter (lambda (x) (string=? (first x) field-name)) (record-field record))))
    (cond
      [(empty? answer) #false]
      [else (second (first answer))])))


(get-field "name" Jack)
(get-field "surname" Jack)
(get-field "age" Jack)
(string-append "The birthplace of " (get-field "name" Jack) " is " (get-field "birthplace" Jack))
(get-field "occupation" Jack)
;;;;;; 2.3.11 ;;;;;;;;;

;; list->record: List<String> List -> Record
;; The function thkes a list of strings representing field names and a list of elements of any type representing field contents and returns a Record that pairs names and contents.
;; (define (read->record string-list value-list) (make-record (car string-list) (car value-list)))


(define (list->record string-list value-list)
  (local ((define (helper string-list value-list)
            (cond
              [(empty? string-list) empty]
              [else (cons (list (first string-list) (first value-list)) (helper (rest string-list) (rest value-list)))])))
    (make-record (helper string-list value-list))))

(list->record (list "name" "age") (list "jaca" 23))
;;;;;; 2.3.12 ;;;;;;;;;

;; read-csv: String -> List<Record>
;; The function takes a string representing the name of a CSV file and returns a list of Records from the CSV file.
;; (define (read-csv file-name) (list (make-record 1 2)))

(define (read-csv file-name)
  (local ((define header (string-split (first (read-lines file-name)) ",")))
    (map (lambda (x) (list->record header (string-split x ","))) (rest (read-lines file-name)))))

;(read-csv "Assignment 6/flights.csv")
