;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Cupryniak_Mateusz_PF1_Assignment3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;; Assignment 3 - Mateusz Cupryniak

;;; ------------- EX 1 -------------

; median : Number Number Number -> Number
; The function takes in 3 numbers and returns their median

;; Header
;(define (median number1 number2 number3) 0)

;; Examples
(check-expect (median 2 4 6) 4)
(check-expect (median 8 3 2) 3)
(check-expect (median -2 4 -6) -2)
(check-expect (median 4 4 -6) 4)

;; Template
;(define (median number1 number2 number3)
;  (cond
;    ... number1 number2x number3 ...))

;; Implementation
(define (median number1 number2 number3)
  (cond
    [(> number1 number2) (if (> number2 number3) number2 (if (> number3 number1) number1 number3 ))]
    [else (if (> number2 number3) (if (> number3 number1) number3 number1) number2) ]
    ))

;;; ------------- EX 2 -------------

;; 3-max : Number Number Number -> Number
;; The function takes 3 numbers and returns the biggest one of them.

;; Header
;(define (3-max n1 n2 n3) 0)

;; Examples
(check-expect (3-max 1 2 3) 3)
(check-expect (3-max 3 3 3) 3)
(check-expect (3-max -1 2 0) 2)

;; Template
;(define (3-max n1 n2 n3)
;  (... n1 n2 n3 ...)

;; Implementation

(define (3-max n1 n2 n3)
  (if (> n1 n2) (if (> n1 n3) n1 n2) (if (> n2 n3) n2 (if (> n1 n3) n1 n3))))

;;; ------------- EX 2.1.3 -------------


;; left-of? : Posn Posn -> Boolean
;; The function takes two points and checks if the second point lies to the left of the first one.

;; Header
;(define (left-of? point1 point2) #false)

;; Examples
(check-expect (left-of? (make-posn 1 2) (make-posn 3 4)) #false)
(check-expect (left-of? (make-posn 20 2) (make-posn 3 4)) #true)
(check-expect (left-of? (make-posn -1 2) (make-posn -3 4)) #true)
(check-expect (left-of? (make-posn 0 2) (make-posn 0 4)) #false)

;; Template
;(define (left-of? point1 point2)
;  (... point1 point2 ...))
               
;; Implementation
(define (left-of? point1 point2)
  (> (posn-x point1) (posn-x point2)))

;;; ------------- EX 2.1.4 -------------

;; mirror-vertical : Posn -> Posn
;; The function takes a point and returns a point at the same height but on the other side of the y axis compared to the input point. 

;; Header
;(define (mirror-vertical point1) (make-posn -1 1)

;; Examples
(check-expect (mirror-vertical (make-posn 5 6)) (make-posn -5 6))
(check-expect (mirror-vertical (make-posn -5 6)) (make-posn 5 6))
(check-expect (mirror-vertical (make-posn 0 6)) (make-posn 0 6))

;; Template
;(define (mirror-vertical point1) (... point1 ...))

;; Implementation
(define (mirror-vertical point1) (make-posn (* -1 (posn-x point1)) (posn-y point1)))

;;; ------------- EX 2.2.5 -------------

;; Month - one of strings: {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
;; representing months of the same name.
;;; ------------- EX 2.2.6 -------------

;; MonthNumber - an integer from 1 to 12 representing a month in the gregorian calendar.

;; We use previously defined Month datatype.
;; number->month : MonthNumber -> Month

;; The function takes a number from 1 to 12 and returns a corresponding Month, considering January to be 1 and December to be 12.

;; Header
;(define (number->month number) " ")

;; Examples
(check-expect (number->month 1) "January")
(check-expect (number->month 3) "March")
(check-expect (number->month 11) "November")

;; Template
;(define (number->month number)
;  (cond
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]
;    [... number ...]))

;; Implementation
(define (number->month number)
  (cond
    [(= number 1) "January"]
    [(= number 2) "February"]
    [(= number 3) "March"]
    [(= number 4) "April"]
    [(= number 5) "May"]
    [(= number 6) "June"]
    [(= number 7) "July"]
    [(= number 8) "August"]
    [(= number 9) "September"]
    [(= number 10) "October"]
    [(= number 11) "November"]
    [(= number 12) "December"]))
;;; ------------- EX 2.2.7 -------------

;; Year - a non-zero integer representing a year

;; leap-year? : Year -> Boolean
;; The function takes an integer and returns true if it is a leap year and false if it is not.

;; Header
;(define (leap-year? year) #false)

;; Examples
(check-expect (leap-year? 2000) #true)
(check-expect (leap-year? 1868) #true)
(check-expect (leap-year? 1900) #false)

;; Template
;(define (leap-year? year)
;  (... year ...))

;; Implementation
(define (leap-year? year)
  (if (= 0 (modulo year 4)) (if (not (= 0 (modulo year 100))) #true (= 0 (modulo year 400))) #false))
;;; ------------- EX 2.2.8 -------------

;; Date - a struct consisting of 3 integers: one between 1 and 31 representing a day, one between 1 and 12 representing a month and one non-zero integer representing a year

(define-struct Date [day month year])
(define D1 (make-Date 10 12 2020))

;;; ------------- EX 2.2.9 -------------

;; date->string : Date -> String
;; The function takes a Date struct and returns the string representation of the date.

;; Header
;(define (date->string date) "")

;; Examples
(check-expect (date->string (make-Date 2 4 1999)) "2 April 1999")
(check-expect (date->string (make-Date 10 11 -1111)) "10 November 1111 BCE")
(check-expect (date->string (make-Date 3 5 2023)) "3 May 2023")
;; Template

;(define (date->string date)
;  (... date ...))

;; Implementation
(define (date->string date)
  (string-append
   (number->string (Date-day date))
   " "
   (number->month (Date-month date))
   " "
   (if (> (Date-year date) 0) (number->string (Date-year date)) (string-append (number->string (* -1 (Date-year date))) " BCE"))))


;;; ------------- EX 2.2.10 -------------

;; days-in-month : Month-Number -> Number
;; The function takes a Month-Number and returns the amount of days in that month.

;; Header
;(define (days-in-month num1) 0)

;; Examples
(check-expect (days-in-month 1) 31)
(check-expect (days-in-month 9) 30)
(check-expect (days-in-month 2) 28)

;; Template
;(define (days-in-month month)
;  (cond
;    [... month ...]
;    [... month ...]
;    [... month ...]))


;; Implementation
(define (days-in-month month)
  (cond
    [(= month 2) 28]
    [(or (= month 4) (= month 6) (= month 9) (= month 11)) 30]
    [else 31]))
;;; ------------- EX 2.2.11 -------------

;; date-valid? : Date -> Boolean
;; Takes a Date and checks if it is valid.

;; Header
;(define (date-valid? date) #false)

;; Examples
(check-expect (date-valid? (make-Date 29 2 1900)) #false)
(check-expect (date-valid? (make-Date 31 4 2001)) #false)
(check-expect (date-valid? (make-Date 29 2 1812)) #true)

;; Template
;(define (date-valid? date)
;  (cond
;    [... date ...]
;    [... date ...]
;    [... date ...]
;    [... date ...]
;    [... date ...]
;    [...]
;    ))  


;; Implementation
(define (date-valid? date)
  (cond
    [(or (< (Date-day date) 1) (> (Date-day date) 31)) #false]
    [(or (< (Date-month date) 1) (> (Date-month date) 12)) #false]
    [(= (Date-year date) 0) #false]
    [(= (Date-month date) 2) (if (= (Date-day date) 29) (if (leap-year? (Date-year date)) #true #false) #true)]
    [(> (Date-day date) (days-in-month (Date-month date))) #false]
    [else #true]
    ))  
