;;; udemircioglu17@ku.edu.tr   14/10/2019
;;;
;;; Comp200 Project 0
;;;
;;; Note: The questions for this project are available at the course website.
;;;   Type all your work and notes in the appropriate sections of this file.
;;;   Please do not delete any of the existing lines.
;;;   Please do not make any modifications after midnight on the due date.
;;;   Semicolon is the Scheme comment character.


;_BANNER_
;;; 2.1 Preparing your project material for submission


;_BANNER_
;;; 2.2 Expressions to Evaluate
(* 8 9)
; value:72

(> 10 9.7)
; true because 10 is greater

(- (if (> 3 4)
       7
       10)
   (/ 16 10))
; 4 is greater so 10 - 16/10 : 8.4


(* (- 25 10)
   (+ 6 3))
; 15x9 value: 135

+
; primitive procedure

(define double (lambda (x) (* 2 x)))
;this function doubles the given number

double
;procedure.

(define c 4)
; c = 4 

c
; value of c: 4

(double c)
; double the value of c: 8

c
; value of c: 4

(double (double (+ c 5)))
;c which is 4 + 5 = 9 then double which is 18 and one more double is 36 so value:36

(define times-2 double)
; creating a new procedure which is times-2.

(times-2 c)
;times-2 is defined as double and c is 4 so value:8

(define d c)
; assign c to d

(= c d)
; checks if c and d equal and gives true

(cond ((>= c 2) d)
      ((= c (- d 5)) (+ c d))
      (else (abs (- c d))))
; in the first part of the condition it tells us if c is bigger or equal to 2 return d. We know that c is 4 so it will return d and since we assigned c to d it will return 4.


;_BANNER_
;;; 2.3 Pretty Printing
(define abs
  (lambda(a)
    (if(> a 0)
       a
       (- a))))
; we use tabs to make the code more easy to understand when checked by another programmer.

;_BANNER_
;;; 2.4 Tracing
(define (fun x)
  (if (zero? x)
    1
    (* x (fun (- x 1)))))
(trace fun)
(fun 4)

;> (fun 4)
;> (fun 3)
;>> (fun 2)
;>> (fun 1)
;>>> (fun 0)
;<<< 1
;<< 1
;<< 2
;< 6
;< 24
;24


;_BANNER_
;;; 2.5 Documentation and Administrative Questions
;1 Debugging and tracing both helps us find where the problem is with our code and helps us solve the problem quickly.
;2 times-2.
;3 A parameter that controls parsing and printing of symbols. When this parameter’s value
;is #f, the reader case-folds symbols (e.g., producing 'hi when the input is any one of hi,
;Hi, HI, or hI). The parameter also affects the way that write prints symbols containing.
;4 -