;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Cupryniak_Mateusz_PF1_Assignment4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Assignment 4 Mateusz Cupryniak

;;;;; Library Imports

(require 2htdp/universe)
(require 2htdp/image)

;;;;; Data Type Definitions

;; Data type line-2d
;; line-2d is a structure of two posn values representing starting and ending coordinates
(define-struct line-2d [starting_coords ending_coords])
(make-line-2d (make-posn 1 1) (make-posn 200 200))


;; Data type Maybe<line-2d> is one of:
; - a line-2d when the line-2d is present,
; - #false when there is no line-2d present
; There can be no line-2d present when the app starts, after a line-2d has been drawn or cancelled.


;; AppState
; A data structure comprising of
; 1) Image of the canvas, (Image)
; 2) Currently drawn line-2d (Maybe<line-2d>)
; 3) Information about if the application is quit or not (Boolean)

(define-struct AppState [image line-2d is_quit])
(define TESTSTATE (make-AppState (empty-scene 600 800) #false #false))
;(make-line-2d (make-posn 1 1) (make-posn 200 200))
;;;;; Functions

;;; draw : AppState -> Image
;; The function takes an AppState and returns an Image of the canvas with currently drawn line-2d if such exists.

;; Header
;(define (draw current_state) (empty-scene 10 10))

;; Examples
;(check-expect (draw TESTSTATE) (add-line-2d (AppState-image TESTSTATE) (posn-x (line-2d-starting_coords (AppState-line-2d TESTSTATE))) (posn-y (line-2d-starting_coords (AppState-line-2d TESTSTATE))) (posn-x (line-2d-ending_coords (AppState-line-2d TESTSTATE))) (posn-y (line-2d-ending_coords (AppState-line-2d TESTSTATE))) "black"))
(check-expect (draw TESTSTATE) (empty-scene 600 800))

;; Template
;(define (draw current_state)
;  (if ... (AppState-line-2d current_state) ...)
;      (... current_state ... )
;      (AppState-image current_state)))

;; Implementation
(define (draw current_state)
  (if (not (boolean? (AppState-line-2d current_state)))
      (add-line-2d (AppState-image current_state)
                (posn-x (line-2d-starting_coords (AppState-line-2d current_state)))
                (posn-y (line-2d-starting_coords (AppState-line-2d current_state)))
                (posn-x (line-2d-ending_coords (AppState-line-2d current_state)))
                (posn-y (line-2d-ending_coords (AppState-line-2d current_state)))
                "black")
      (AppState-image current_state)))

;;; move-end: AppState number number -> AppState
;; The function takes an AppState and new coordinates and returns an AppState where the current line-2d's end point is at the new coordinates if there is a line-2d currently drawn. If not, the function returns the input state unchanged.

;; Header
;(define (move-end current_state new-x new-y) (empty-scene 600 800))

;; Examples
(check-expect (move-end TESTSTATE 100 500) (make-AppState (empty-scene 600 800) #false #false))

;; Template
;(define (move-end current_state new-x new-y)
;  (if ... (AppState-line-2d current_state)) ...)
;      ... current_state ...)
;      current_state))

;; Implementation
(define (move-end current_state new-x new-y)
  (if (not (boolean? (AppState-line-2d current_state)))
      (make-AppState (AppState-image current_state) (make-line-2d (line-2d-starting_coords (AppState-line-2d current_state)) (make-posn new-x new-y)) (AppState-is_quit current_state))
      current_state))


;;; add-line-2d-to-canvas: AppState -> AppState
;; The function takes an AppState and if there is a line-2d currently drawn it adds it to the canvas and resets it to #false, if there was no line-2d drawn it returns the AppState unchanged.

;; Header
;(define (add-line-2d-to-canvas current_state) current_state)

;; Examples
(check-expect (add-line-2d-to-canvas TESTSTATE) TESTSTATE)

;; Template
;(define (add-line-2d-to-canvas current_state)
;  (if ... (AppState-line-2d current_state) ...)
;  (... current_state ...)
;  current_state))

;; Implementation
(define (add-line-2d-to-canvas current_state) (if (not (boolean? (AppState-line-2d current_state)))
  (make-AppState (draw current_state) #false #false)
  current_state))


;;; cancel-line-2d: AppState -> AppState
;; The function takes an AppState and returns an AppState with currently drawn line-2d as #false if there was one in the input or returns the input state unchanged if there was no line-2d currently drawn

;; Header
;(define (cancel-line-2d current_state) current_state)

;; Examples
(check-expect (cancel-line-2d TESTSTATE) TESTSTATE)

;; Template
;(define (cancel-line-2d current_state)
;  (if ... (AppState-line-2d current_state) ...)
;      ... current_state ...)
;       current_state))

;; Implementation
(define (cancel-line-2d current_state) (if (not (boolean? (AppState-line-2d current_state)))
                                        (make-AppState (AppState-image current_state) #false #false)
                                        current_state))
  

;;; quit: AppState -> AppState
;; The function takes an AppState and returns an AppState that records the information that the application has quit.

;; Header
;(define (quit current_state) (make-AppState (AppState-image current_state) (AppState-line-2d current_state) #true)))

;; Examples
(check-expect (quit TESTSTATE) (make-AppState (AppState-image TESTSTATE) (AppState-line-2d TESTSTATE) #true))
;; Template

;(define (quit current_state)
;  (... current_state ...))

;; Implementation
(define (quit current_state)
  (make-AppState (AppState-image current_state) (AppState-line-2d current_state) #true))


;;; handle-mouse
;; The function handles mouse events by updating the state accordingly to the input's mouse events.

;; Header
;(define (handle-mouse current_state 2 2 "drag") (move-end current_state 2 2))

;; Examples
(check-expect (handle-mouse TESTSTATE 2 2 "drag") (move-end TESTSTATE 2 2))

;; Template
;(define (handle-mouse world x y event)
;  (cond
;    [... world ...]
;    [... world ...]
;    [... world ...]
;    [world]))

;; Implementation
(define (handle-mouse world x y event) 
  (cond [(string=? event "button-down") (make-AppState (AppState-image world) (make-line-2d (make-posn x y) (make-posn x y)) (AppState-is_quit world))]
        [(string=? event "drag") (move-end world x y)]
        [(string=? event "button-up") (add-line-2d-to-canvas world)]
        [else world]))




;;; handle-key
;; The function handles key events by updating the state according to the input's key events.

;; Header
;(define (handle-key current_state "q") (quit world))

;; Examples
(check-expect (handle-key TESTSTATE "q") (quit TESTSTATE))

;; Template
;(define (handle-key world a-key)
;  (cond
;    [... world ...]
;    [... world ...]
;    [world]))

;; Implementation
(define (handle-key world a-key)
  (cond
    [(key=? a-key "q") (quit world)]
    [(key=? a-key "escape") (cancel-line-2d world)]
    [else world]))


;;; quit?
;; The function takes an AppState and returns a Boolean indicating whether the app has quit or not.

;; Header
;(define (quit? current_state) #false)

;; Examples
(check-expect (quit? TESTSTATE) #false)

;; Template
;(define (quit? current_state) (... current_state ...))

;; Implementation
(define (quit? current_state) (AppState-is_quit current_state))

;;;;; Main Application

;; drawing-app : AppState -> AppState
;; The function takes an initial AppState and passes the handlers to big-bang function to create an interactive app.
(define (drawing-app initial-state)
  (big-bang initial-state 
    [to-draw draw]
    [on-mouse handle-mouse]
    [on-key handle-key]
    [stop-when quit?]
    ))


(drawing-app TESTSTATE)