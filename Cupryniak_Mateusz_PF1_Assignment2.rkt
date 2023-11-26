;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Cupryniak_Mateusz_PF1_Assignment2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;--------------EX 1-------------
;; Data type definition
; Length - a non-negative Number describing length in either centimeters or inches.
;--------------EX 2-------------
;; Signature
; inch->cm: Length -> Length

;; The function is converting Length in inches to Length in centimeters.

;; Header
;(define (inch->cm length) 0)
(define CONVERSION_FACTOR 2.54)

;; Examples
;1 inch -> 2.54 cm
;5 inch -> 12.7 cm
(check-expect (inch->cm 1) 2.54)
(check-expect (inch->cm 5) 12.7)
(check-expect (inch->cm 0) 0)

;; Template
;(define (inch->cm length)
;  (... length ...))

;; Implementation
(define (inch->cm length)
  (* length CONVERSION_FACTOR))

;--------------EX 3-------------

;; Data type definition
; We only use numbers

;; The functions takes 4 numbers and returns their average.

;; Signature
; mean/4: number, number, number, number -> number

;; Header
;(define (mean/4 n1 n2 n3 n4) 0)

;; Examples
(check-expect (mean/4 1 1 1 1) 1)
(check-expect (mean/4 4 8 16 4) 8)

;; Template
;(define (mean/4 n1 n2 n3 n4)
;  (... n1 n2 n3 n4 ...))

;; Implementation
(define (mean/4 n1 n2 n3 n4)
  (/ (+ n1 n2 n3 n4) 4))

;--------------EX 4-------------

;; Data type definition
; We use only numbers

;; Signature
; area-triangle: number, number -> number

;; Header
;(define (area-triangle base_length height) 0)

;; The function computes the area of a triangle based on given base length and height.

;; Examples
;base_length 1, height 2 -> area 1
(check-expect (area-triangle 1 2) 1)

;; Template
;(define (area-triangle base_length height)
;  (... base_length height ...))

;; Implementation
(define (area-triangle base_length height)
  (* base_length height 1/2))

;--------------EX 5-------------

;; Data type definition
; We use only built in Number type.

;; Signature

; perfect-square?: number -> boolean

;; Header
;(define (perfect-square? number) #true)

;; The function checks if given number is a perfect square and returns boolean true if it is and false if it is not.

;; Examples
(check-expect (perfect-square? 4) #true)
(check-expect (perfect-square? 8) #false)

;; Template
;(define (perfect-square? number)
;  (... number ...))

;; Implementation
(define (perfect-square? number)
  (integer? (sqrt number)))

;--------------EX 6-------------

;; Data type definition
; Price_CHF - non-negative number that defines a price in Swiss Francs

;--------------EX 7-------------

;; Signature
; final-price: Number -> Price_CHF

;; Header
; (define (final-price amount) 0)

;; Function computes the total price in chf that needs to be paid for a given amoount of rolls.

;; Examples
(check-expect (final-price 6) (* 2 6))
(check-expect (final-price 20) (* 1.8 20))
(check-expect (final-price 21) (* 1.7 21))

;; Template
;(define (final-price amount)
;  (cond
;    [... amount ...]
;    [... amount ...]
;    [... amount ...]))

;; Implementation
(define (final-price amount)
  (cond
    [(>= amount 21) (* 1.7 amount)]
    [(> amount 6) (* 1.8 amount)]
    [else (* amount 2)]))
;--------------EX 8-------------
;; Data type definition
; Neo-Latin-Note-Name - one of strings {"do", "re", "mi", "fa", "sol", "la", "si"} representing a neo-latin name of a note in C-major scale
; English-Note-Name - one of strings {"C", "D", "E", "F", "G", "A", "B"} representing an english name of a note in C-major scale

;; Header
;(define (neo-latin->english note) 0)

;; Signature
; neo-latin->english: Neo-Latin-Note-Name -> English-Note-Name

; Function changes given name of a note in C-major scale in neo-Latin naming to corresponding English name

;; Examples
(check-expect (neo-latin->english "do") "C")
(check-expect (neo-latin->english "re") "D")
(check-expect (neo-latin->english "mi") "E")
(check-expect (neo-latin->english "fa") "F")
(check-expect (neo-latin->english "sol") "G")
(check-expect (neo-latin->english "la") "A")
(check-expect (neo-latin->english "si") "B")

;; Template
;(define (neo-latin->english note)
;  (cond
;    [... note ...]
;    [... note ...]
;    [... note ...]
;    [... note ...]
;    [... note ...]
;    [... note ...]
;    [... note ...]))
  

;; Implementation
(define (neo-latin->english note)
  (cond
    [(string=? note "do") "C"]
    [(string=? note "re") "D"]
    [(string=? note "mi") "E"]
    [(string=? note "fa") "F"]
    [(string=? note "sol") "G"]
    [(string=? note "la") "A"]
    [(string=? note "si") "B"]))

;--------------EX 9-------------
;; Data Type Definitions
; Quarter-Time - an integer from a group of {0, 1, 2, 3} representing the corresponding quarter of an hour.
; Angle - a Number from 0 included to 360 included indicating the angle in degrees.

;; Signature
; quarter->angle: Quarter-Time -> Angle

;; Statement of purpose
; Function takes a time in quarter hours and returns the corresponding angle of a clock's minute hand indicating that quarter

;; Header
;(define (quarter->angle time) 0)

;; Examples
(check-expect (quarter-angle 0) 90)
(check-expect (quarter-angle 1) 0)
(check-expect (quarter-angle 2) 270)
(check-expect (quarter-angle 3) 180)

;; Template
;(define (quarter-angle time)
;  (cond
;    [... time ...]
;    [... time ...]
;    [... time ...]
;    [... time ...]))

;; Implementation
(define (quarter-angle time)
  (cond
    [(= time 0) 90]
    [(= time 1) 0]
    [(= time 2) 270]
    [(= time 3) 180]))
;--------------EX 10-------------
(require 2htdp/image)

;; Data type definition
; Quarter-Time-Larger - data type similar to previously defined Quarter-Time but not limited to 4; i.e. Non-negative integer representing a quarter of an hour

;; Signature
; clock-minutes: Quarter-Time-Larger -> Image

;; Statement of purpose
; Function takes input of Quarter-Time-Larger 

;; Header
;(define (clock-minutes time) 0 )

;; Examples
(check-expect (clock-minutes 1)
              (rotate (quarter-angle (modulo 1 4))(overlay/align/offset "right" "middle"  (rectangle 90 5 "solid" "black") 10 0 (circle 100 "solid" "white")
)))

;; Template
;(define (clock-minutes time)
;  (... time ...)
;)))

;; Implementation
(define (clock-minutes time)
  (rotate (quarter-angle (modulo time 4)) (overlay/align/offset "right" "middle"  (rectangle 90 5 "solid" "black") 10 0 (circle 100 "solid" "white")
)))

;; manual tests
;(clock-minutes 10)
;(clock-minutes 0)
;(clock-minutes 1)
;(clock-minutes 2)
;(clock-minutes 3)

