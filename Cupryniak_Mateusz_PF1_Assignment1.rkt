;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Cupryniak_Mateusz_PF1_Assignment1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
; EX 1
(define TOTAL-HOURS (+ 5 8 12 10))
; EX 2
(define AVERAGE-HOURS (/ TOTAL-HOURS 4))

; EX 3
(define CONVERSION-FACTOR 1/60)
(define DISTANCE-TRAVELED (+ (* 80 22 CONVERSION-FACTOR) 120 (* 90 (+ 1 1/3))))


; EX 4
(define PRICE-PER-SQUARE-STANDARD (/ (* pi 33 33 1/4) 12 ))
(define PRICE-PER-SQUARE-BABY  (/ (* pi 18 18 1/4) 9))

(define STANDARD-BETTER? (< PRICE-PER-SQUARE-STANDARD PRICE-PER-SQUARE-BABY))
; EX 5
(define NAME "Mateusz")
(string-append "Hello " NAME ", welcome to PF1!")
; EX 6
(define (greet Name) (string-append "Hello " Name ", welcome to PF1!"))
(greet "Lukasz")
; EX 2.2

(define DO-NOT-GO (overlay (circle 80 "solid" "white") (circle 100 "solid" "red")))
(define PRIORITY (rotate 45 (overlay (square 58 "solid" "yellow")(square 62 "solid" "black")(square 99 "solid" "white")(square 103 "solid" "black"))))
