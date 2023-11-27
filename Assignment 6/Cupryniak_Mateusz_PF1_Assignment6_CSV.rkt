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
;; It consists of:
;; - field name (String)
;; - field value (any type)
(define-struct record [field])
(define Jaca (make-record (list (list "name" "jaca") (list "pogchamp" "test"))))
(first (record-field Jaca))
(first (rest (record-field Jaca)))





;;;;;; 2.3.10 ;;;;;;;;;
;; get-field: Record String -> String
;; The function takes a field name and a Record and returnss the content of the field with the given name if it exists or #false if it does not exist.
;; (define (get-field field-name record) #false)

(check-expect (get-field "name" Jaca) "jaca")

(define (get-field field-name record)
  (cond
    [(string=? (record-field record) field-name) (record-field record)]
    [else #false]))

;;;;;; 2.3.11 ;;;;;;;;;

;; list->record: List<String> List -> Record
;; The function thkes a list of strings representing field names and a list of elements of any type representing field contents and returns a Record that pairs names and contents.
;; (define (read->record string-list value-list) (make-record (car string-list) (car value-list)))


;(define (list->record string-list value-list) (map make-record string-list value-list))

;(list->record (list "name" "age") (list "jaca" 23))



;;;;;; 2.3.12 ;;;;;;;;;
(define (read-csv file-name) #true)

; (define (read-csv-file file-path)
;   (with-input-from-file file-path
;     (lambda ()
;       (let loop ((lines (port->lines (current-input-port))))
;         (if (null? lines)
;             '()
;             (cons (string-split (car lines) #",") (loop (cdr lines))))))))

; (define csv-data (read-csv-file "/path/to/your/csv/file.csv"))

; (displayln csv-data)


