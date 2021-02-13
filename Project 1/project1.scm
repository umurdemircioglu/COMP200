;;; udemircioglu17@ku.edu.tr  28/10/2019
;;;
;;; Comp200 Project 1
;;;
;;; Due Oct 28, 2019
;;;
;;; Before you start:
;;;
;;; * Please read the detailed instructions for this project from the
;;; file project1.pdf available in the Projects section of the
;;; course website.
;;;
;;; * Please read "Project Submission Instructions" carefully and make
;;; sure you understand everything before you start working on your
;;; project in order to avoid problems.
;;;
;;; While you are working:
;;; * Type all your work and notes in the appropriate sections of this file.
;;; * Please do not delete any of the existing lines.
;;; * Use the procedure names given in the instructions.
;;; * Remember to frequently save (C-x C-s) and check-in (comp101-put) your file.
;;; * Use semicolon (;) to comment out text, tests and unused code.
;;; * Remember to document your code.
;;; * Remember our collaboration policy: you can discuss with your friends but
;;;
;;;   *** NOTHING WRITTEN GETS EXCHANGED ***
;;;
;;; When you are done:
;;; * Perform a final save and check-in.
;;; * Please do not make any modifications after midnight on the due date.
;;; * Please send an email comp101help@ku.edu.tr if you have any questions.
;;; * Make sure your file loads without errors.
;;;
;;;   *** IF (load "project1.scm") GIVES ERRORS YOUR PROJECT WILL NOT BE GRADED ***
;;;

;_BANNER_
;;; Problem 1: Some Simple Probability Theory

; Description for factorial: (before the definition of each procedure,
; please write a description about what the procedure does and what
; its input and output should be, making sure the lines are commented
; out with semi-colons)
(#%require (only racket/base random))

(define factorial
  (lambda (n)
    (if (<= n 0) 1
        (* n(factorial(- n 1))))
    )
  )
; Test cases for factorial: (after the definition of each procedure,
; please cut and paste some test cases you have run, making sure the
; lines are commented out with semi-colons)

(factorial 5 )  ; -> 120
(factorial 5 )  ; -> 120
(factorial 10 )  ; ->3628800


;;; Description for binomial:

(define binomial 
  (lambda (n b)
    (/ (factorial n)(* (factorial(- n b)) (factorial b)))
))

; Test cases for binomial:

(binomial 5 1)  ; -> 5
(binomial 5 2)  ; -> 10
(binomial 10 5)  ; -> 252


;;; Description for binomial-2:


(define binomial-2
  (lambda (n b)
    (if(= b 0) 
       1
        (* (/ n b)(binomial-2 (- n 1 ) (- b 1))))))
        
       
        
  
; Test cases for binomial-2:

(binomial-2 5 1)  ; -> 5
(binomial-2 5 2)  ; -> 10
(binomial-2 10 5)  ; -> 252


;;; Description for exactly-b-smarties:


(define exactly-b-smarties 
  (lambda (n b p)
    (* (binomial-2 n b) (expt p b) (expt (- 1 p )(- n b)))
))

; Test cases for exactly-b-smarties:

(exactly-b-smarties 1 1 0.5)   ; -> 0.5
(exactly-b-smarties 2 1 0.5)   ; -> 0.5
(exactly-b-smarties 2 2 0.5)   ; -> 0.5
(exactly-b-smarties 2 1 0.3)   ; -> 0.42
(exactly-b-smarties 10 2 0.3)  ; -> 0.23347444049999988


;_BANNER_
;;; Problem 2: More Probability Theory

;;; Description for atleast-b-smarties:
;;; Recursive


(define atleast-b-smarties 
  (lambda (n b p)
   (if(= n b)
    (exactly-b-smarties n b p)
   (+(exactly-b-smarties n b p) (atleast-b-smarties n (+ b 1) p )))))
     


; Test cases for atleast-b-smarties:

(atleast-b-smarties 9 5 0.5)        ; -> 0.5
(atleast-b-smarties 19 10 0.5)      ; -> 0.5
(atleast-b-smarties 10 5 0.6)       ; -> 0.8337613824
(atleast-b-smarties 15 5 0.3)       ; -> 0.48450894077315665


;;; Description for atleast-b-smarties-2:
;;; Iterative
(define atleast-b-smarties-2
  (lambda (n b p)
1

))

;(define atleast-b-smarties-2-helper
 ; (lambda total n b p)
  ;(if(= n b)
   ;  (+ total (exactly-b-smarties n b p))
    ; total
    ; (
  
     

; Test cases for atleast-b-smarties-2:

(atleast-b-smarties-2 9 5 0.5)        ; -> 0.5
(atleast-b-smarties-2 19 10 0.5)      ; -> 0.5
(atleast-b-smarties-2 10 5 0.6)       ; -> 
(atleast-b-smarties-2 15 5 0.3)       ; -> 


;_BANNER_
;;; Problem 3: Choosing a Bag

;;; Description for good-bag:

(define good-bag
  (lambda (n p)
    (cond((< n 8) #f)
         ((< 0.5 (atleast-b-smarties n 8 p)) #t)
          (else #f))))

; Test cases for good-bag:

(good-bag 7 1)       ; -> #f
(good-bag 8 1)      ; -> #t
(good-bag 8 0.5)    ; -> #f
(good-bag 8 0.99)   ; -> #t
(good-bag 16 0.5)    ; -> #t
(good-bag 16 0.7)    ; -> #t
(good-bag 16 0.4)    ; -> #f


;_BANNER_
;;; Problem 4: Choosing a Value for p

;;; Description of minimum-p

(define minimum-p
  (lambda (n inc)
    (minimum-p-helper n inc 0)

))

(define minimum-p-helper
  (lambda(n inc p)
        (if(equal? (good-bag n p) #t) p
          (minimum-p-helper n inc (+ p inc)))))
      
           
        
; Test cases for minimum-p:
(minimum-p 12 0.1)    ; -> 0.7
(minimum-p 12 0.01)    ; -> 0.6300000000000003
(minimum-p 12 0.001)    ; -> 0.6220000000000004
(minimum-p 12 0.0001)    ; -> 0.6214999999999479
(minimum-p 12 0.00001)    ; -> 0.6214799999998064

;_BANNER_
;;; Problem 5: Choosing p More Efficiently

;;; Description of minimum-p-new

(define minimum-p-new
  (lambda (n inc)
    (minimum-p-helper-new n inc 0 0)))


(define minimum-p-helper-new
  (lambda(n inc p count)
        (if(equal? (good-bag n p) #t)(list p count)
          (minimum-p-helper-new n inc (+ p inc) (+ 1 count)))))

; Test cases for minimum-p-new:

(minimum-p-new 15 0.1)    ; -> (0.6 6)
(minimum-p-new 15 0.01)    ; -> (0.5000000000000002 50)
(minimum-p-new 15 0.001)    ; -> (0.5000000000000003 500)
(minimum-p-new 15 0.0001)    ; -> (0.5000999999999612 5001)
(minimum-p-new 15 0.00001)    ; -> (0.5000000000003593 50000)


;;; Description of minimum-p-binary:

(define minimum-p-binary
  (lambda (n inc)
    1
   )
  )


(define minimum-p-binary-helper
  (lambda (n inc a b count)
  1
))

; Test cases for minimum-p-binary:

(minimum-p-binary 12 0.1)    ; -> (0.6 6)
(minimum-p-binary 12 0.01)    ; -> 
(minimum-p-binary 12 0.001)    ; ->
(minimum-p-binary 12 0.0001)    ; ->
(minimum-p-binary 12 0.00001)    ; ->


;_BANNER_
;;; Problem 6: Monte-Carlo Simulations

;;; Description of coin-toss:

(define coin-toss
  (lambda (p)
    (if (>(random) p) #t
       #f
        
)))

; Test cases for coin-toss:
(coin-toss 1)     ; -> #f
(coin-toss 0)     ; -> #t


;;; Description of random-bag:

(define random-bag
  (lambda (n p)
    (random-bag-helper n p 0)
))

(define random-bag-helper
  (lambda (n p count)
    (if (> n 0)
    (if (equal? (coin-toss p) #t)
          (random-bag-helper (- n 1) p (+ 1 count))
    (random-bag-helper(- n 1) p count))
    count)))
 


; Test cases for random-bag:
(random-bag 10 1.0)     ; ->0
(random-bag 20 1.0)     ; ->0
(random-bag 100 0.5)     ; ->46
(random-bag 100 0.0)     ; ->100
(random-bag 10 0.0)     ; ->10
(random-bag 100 0.0001)     ; ->100

;;; Description of get-m-bags:

(define get-m-bags
  (lambda (m n p)
1
))

; Test cases for get-m-bags:
(get-m-bags 1 10 1)      ; ->
(get-m-bags 2 20 1)      ; ->
(get-m-bags 0 10 1)      ; ->
(get-m-bags 100 10 0.0001)      ; ->
(get-m-bags 100 4 0.25)      ; ->

;;; Description of estimate-good-probability:

(define estimate-good-probability
  (lambda (m n p t)
1
))



; Test cases for estimate-good-probability:

(estimate-good-probability 24 12 0.5 1000)    ; ->
(estimate-good-probability 24 16 0.5 1000)    ; ->
(estimate-good-probability 24 16 0.3 1000)    ; ->
(estimate-good-probability 24 16 0.2 1000)    ; ->



;_BANNER_
;;; Problem 7: Monte-Carlo Again

;;; Description of estimate-good-probability-2:


(define estimate-good-probability-2
  (lambda (m n p q t)
1
))



;New defination of the "good-bag"
;o is the number of orange smarties in the current bag
(define good-bag-new
  (lambda (n q o)
1
))
;this new get-m-bags-new first chooses the orange smarties with the given probability of p than
;pass it to the good-bag-new function to the jobs.
(define get-m-bags-new
  (lambda (m n p q)
1
))

;;;____PLACE FOR ESSAY QUESTIONS_________;
;;;Answer following questions:
;;;1. Why do we test even simple procedures?
;;; We test them to see if the function works as intended.
;;;
;;;
;;;2. What makes a test case set a good test case set?
;;; Different set of number for every single input.
;;;
;;;3. How can we automate testing?
;;; -
;;;
;;;4. Why testing is required? Why do we have to test even the simplest procedure?
;;; We test them to see if the function work as intended.
;;;
;;;5. Testing procedures which use random variables is a problem. How would you test the coin-toss procedure and decide if it is working correctly?
;;;
;;;
;;;______________________________________;


;_BANNER_
; END OF PROJECT
; Ignore the following
; This is necessary so the file loads without errors initially:
(define your-code-here #f)

