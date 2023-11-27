#lang htdp/isl+

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; Section 2.3 - working with CSV files ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;; 2.3.9 ;;;;;;;;;
;; Data type definition:
;; Record - a data type containing any row of date from a CSV file consisting of field names and contents

;; get-field: Record String -> String
;; The function takes a field name and a Record and returnss the content of the field with the given name if it exists or #false if it does not exist.
;; (define (get-field field-name record) #false)

;(check-expect (get-field "name" (make-record "name" "John" "age" "25")) "John")

;;;;;; 2.3.10 ;;;;;;;;;


;;;;;; 2.3.11 ;;;;;;;;;

;;;;;; 2.3.12 ;;;;;;;;;


; (define (read-csv-file file-path)
;   (with-input-from-file file-path
;     (lambda ()
;       (let loop ((lines (port->lines (current-input-port))))
;         (if (null? lines)
;             '()
;             (cons (string-split (car lines) #",") (loop (cdr lines))))))))

; (define csv-data (read-csv-file "/path/to/your/csv/file.csv"))

; (displayln csv-data)


