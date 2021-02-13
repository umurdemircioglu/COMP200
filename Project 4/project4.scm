;_BANNER_
;;;   The Object-Oriented Adventure Game
;_BANNER_
;;;
;;; udemircioglu17@ku.edu.tr
;;;                                
;;; Before you start:
;;; * Please read the project handout available on the course
;;;   web site first to get a basic idea about the project and the 
;;;   logic behind it, then to find out the details about what 
;;;   your tasks are for the rest of the project.
;;;
;;; * The following code should be studied and loaded for this
;;;   project.  Please do not modify these files, put all your work in
;;;   this file.
;;;
;;; - objsys.scm: support for an elementary object system
;;; - objtypes.scm: a few nice object classes
;;; - setup.scm: a bizarre world constructed using these classes
;;;
;;; * Plan your work with pencil and paper before starting to code.
;;;
;;; While you are working:
;;; * Type all your work and notes in the appropriate sections of this file.
;;; * Please do not delete any of the existing lines.
;;; * Use the procedure names given in the instructions.
;;; * Remember to frequently save your file.
;;; * Use semicolon (;) to comment out text, tests and unused code.
;;; * Remember to document your code (in this file)
;;; * Remember our collaboration policy: you can discuss with your friends but:
;;;
;;;   *** NOTHING WRITTEN GETS EXCHANGED ***
;;;
;;;
;;; When you are done:
;;; * Perform a final save and submit your work following the instructions.
;;; * Please do not make any modifications after midnight on the due date.
;;; * Please send an email to helpline [comp200-group@ku.edu.tr] if you have any questions.
;;; * Make sure your file loads without errors:
;;; ****************************************************************************
;;; ***  Your code should run without any syntactic errors. Projects  causing error will NOT be graded. ***
;;; ****************************************************************************
;;;
;; Do NOT modify or delete the lines below.
(#%require (only racket/base random))
(load "objsys.scm")     	   	  	
(load "objtypes.scm")     	   	  	
(load "setup.scm")     	   	  	
(define nil '())   
(define your-answer-here #f)
;;;;;;;;;

;_BANNER_
;;; PART II. Programming Assignment
;;;
;;; The answers to the computer exercises in Section 5 go in the
;;; appropriate sections below.
;;;



;_BANNER_
;;;;;;;;;;;;; Setting up ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;; CODES: ;;;;;;;;;;;;;
;;

(setup 'Umur)

(ask (ask me 'location) 'name)

(ask me 'say (list "My name is" (ask me 'name)))

(ask me 'say (list "HELLO WORLD"))

(ask me 'go (ask (car (ask (ask me 'location) 'exits)) 'name))

;(ask me 'take (thing-named 'diploma))

;(ask me 'drop (thing-named 'diploma))

(ask me 'die)




;_BANNER_
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;
     
;ready
;adm-building

;At adm-building umur says -- My name is umur 
;At adm-building umur says -- HELLO WORLD 
;umur moves from adm-building to registrar-office 
;cici moves from cici-bufe to suzy-cafe 
;At suzy-cafe cici says -- Hi suzy 
;At suzy-cafe cici says -- Prepare to suffer, suzy ! 
;At suzy-cafe suzy says -- Ouch! 3 hits is more than I want! 
;At suzy-cafe suzy says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;suzy moves from suzy-cafe to heaven 
;lambda-man moves from eng-b30 to eng-z21 
;lambda-man moves from eng-z21 to eng-auditorium 
;lambda-man moves from eng-auditorium to eng-z21 
;comp200-student moves from eng-b30 to eng-z21 
;At eng-z21 comp200-student says -- Hi lambda-man 
;At eng-z21 comp200-student says -- I take problem-set from eng-z21 
;prof-yuret moves from sci-building to eng-building 
;alyssa-p-hacker moves from graduation-stage to great-court 
;ben-bitdiddle moves from graduation-stage to great-court 
;At great-court ben-bitdiddle says -- Hi alyssa-p-hacker 
;ben-bitdiddle moves from great-court to cas-building 
;--- the-clock Tick 0 --- 
;You are in registrar-office 
;You are not holding anything. 
;You see stuff in the room: diploma 
;There are no other people around you. 
;The exits are in directions: west out #t
;At registrar-office umur says -- I take diploma from registrar-office 
;At registrar-office umur says --    HURRRAY!!!!!!!!!!!!!
;At registrar-office umur says -- I drop diploma at registrar-office
;At registrar-office umur says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;umur moves from registrar-office to heaven game-over-for-you-dude

;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;_BANNER_
 
     
     
     

;_BANNER_
;;;;;; Understanding installation;;;;;
;_BANNER_
;;
;;;;;;;;;;;;; ANSWER: ;;;;;;;;;;;;;
;;



;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;_BANNER_

     
     
     
     
     
     
     
     
     
     

;_BANNER_
;;;;;;;;;;;; Who just died? ;;;;;;;;;;
;_BANNER_
;;
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;

(names-of(ask heaven 'things))
     
;_BANNER_
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;

;In the previous coding part section I already died using (ask me 'die) but in this clock tick also ben-bitdiddle died so (names-of(ask heaven 'things)) gave the output of (umur ben-bitdiddle).
     
;_BANNER_
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;
     
;At bursar-office umur says -- My name is umur 
;At bursar-office umur says -- HELLO WORLD 
;umur moves from bursar-office to registrar-office 
;At cici-bufe cici says -- Prepare to suffer, ben-bitdiddle ! 
;At cici-bufe ben-bitdiddle says -- Ouch! 1 hits is more than I want! 
;suzy moves from suzy-cafe to cici-bufe 
;At cici-bufe suzy says -- Hi cici ben-bitdiddle 
;At cici-bufe suzy says -- Prepare to suffer, ben-bitdiddle ! 
;At cici-bufe ben-bitdiddle says -- Ouch! 3 hits is more than I want! 
;At cici-bufe ben-bitdiddle says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;ben-bitdiddle moves from cici-bufe to heaven 
;lambda-man moves from eng-z21 to eng-building 
;comp200-student moves from eng-auditorium to eng-z21 
;comp200-student moves from eng-z21 to deans-office 
;At deans-office comp200-student says -- I take transcript from deans-office 
;prof-yuret moves from bookstore to suzy-cafe 
;alyssa-p-hacker moves from sos-building to cas-building 
;alyssa-p-hacker moves from cas-building to sos-building 
;--- the-clock Tick 0 --- 
;You are in registrar-office 
;You are not holding anything. 
;You see stuff in the room: diploma 
;There are no other people around you. 
;The exits are in directions: west out #t
;At registrar-office umur says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;umur moves from registrar-office to heaven 
;At heaven umur says -- Hi ben-bitdiddle game-over-for-you-dude
;(umur ben-bitdiddle)

;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;_BANNER_
     
 
;_BANNER_
;;;;;; Computer exercise: But I'm too young to die!! ;;;;
;_BANNER_
;;
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;

(define (make-person name birthplace) ; symbol, location -> person
  (let ((mobile-thing-part (make-mobile-thing name birthplace))
	(container-part    (make-container))
	(health            3)
	(strength          1)
   (lives             3))
    (lambda (message)
      (case message
	((PERSON?) (lambda (self) #T))
	((STRENGTH) (lambda (self) strength))
	((HEALTH) (lambda (self) health))
        ((SAY)
         (lambda (self list-of-stuff)
           (ask screen 'TELL-ROOM (ask self 'location)
                (append (list "At" (ask (ask self 'LOCATION) 'NAME)
                                 (ask self 'NAME) "says --")
                           list-of-stuff))
                  'SAID-AND-HEARD))
	((HAVE-FIT)
	 (lambda (self)
	   (ask self 'SAY '("Yaaaah! I am upset!"))
	   'I-feel-better-now))

	((PEOPLE-AROUND)	; other people in room...
	 (lambda (self)
	   (let* ((in-room (ask (ask self 'LOCATION) 'THINGS))
		  (people (myfilter (lambda (x) (is-a x 'PERSON?)) in-room)))
	     (delq self people))))

	((STUFF-AROUND)		; stuff (non people) in room...
	 (lambda (self)
	   (let* ((in-room (ask (ask self 'LOCATION) 'THINGS))
		  (stuff (myfilter (lambda (x) (not (is-a x 'PERSON?))) in-room)))
	     stuff)))
	 
	((PEEK-AROUND)		; other people's stuff...
	 (lambda (self)
	   (let ((people (ask self 'PEOPLE-AROUND)))
	     (accumulate append '() (map (lambda (p) (ask p 'THINGS)) people)))))

	((TAKE)
	 (lambda (self thing)
	   (cond ((ask self 'HAVE-THING? thing)  ; already have it
		  (ask self 'SAY (list "I am already carrying"
				       (ask thing 'NAME)))
		  #f)
		 ((or (is-a thing 'PERSON?)
		      (not (is-a thing 'MOBILE-THING?)))
		  (ask self 'SAY (list "I try but cannot take"
				       (ask thing 'NAME)))
		  #F)
		 (else
		  (let ((owner (ask thing 'LOCATION)))
		    (ask self 'SAY (list "I take" (ask thing 'NAME) 
					 "from" (ask owner 'NAME)))
		    (if (is-a owner 'PERSON?)
			(ask owner 'LOSE thing self)
			(ask thing 'CHANGE-LOCATION self))
		    thing)))))

	((LOSE)
	 (lambda (self thing lose-to)
	   (ask self 'SAY (list "I lose" (ask thing 'NAME)))
	   (ask self 'HAVE-FIT)
	   (ask thing 'CHANGE-LOCATION lose-to)))

	((DROP)
	 (lambda (self thing)
	   (ask self 'SAY (list "I drop" (ask thing 'NAME)
				"at" (ask (ask self 'LOCATION) 'NAME)))
	   (ask thing 'CHANGE-LOCATION (ask self 'LOCATION))))

        ((GO-EXIT)
         (lambda (self exit)
           (ask exit 'USE self)))

	((GO)
	 (lambda (self direction) ; person, symbol -> boolean
	   (let ((exit (ask (ask self 'LOCATION) 'EXIT-TOWARDS direction)))
	     (if (is-a exit 'EXIT?)
                 (ask self 'GO-EXIT exit)
		 (begin (ask screen 'TELL-ROOM (ask self 'LOCATION)
			     (list "No exit in" direction "direction"))
			#F)))))
	((SUFFER)
	 (lambda (self hits)
	   (ask self 'SAY (list "Ouch!" hits "hits is more than I want!"))
	   (set! health (- health hits))
	   (if (<= health 0) (ask self 'DIE))
	   health))

	((DEATH-SCREAM)
	 (lambda (self)
	   (ask screen 'TELL-WORLD
		'("An earth-shattering, soul-piercing scream is heard..."))))

	((ENTER-ROOM)
	 (lambda (self)
	   (let ((others (ask self 'PEOPLE-AROUND)))
	     (if (not (null? others))
		 (ask self 'SAY (cons "Hi" (names-of others)))))
	   (ask (ask self 'location) 'make-noise self)
	   #T))
	
	;; Here is the original DIE method
   #|
	 ((DIE)
	  (lambda (self)
	    (ask self 'SAY '("SHREEEEK!  I, uh, suddenly feel very faint..."))
	    (for-each (lambda (item) (ask self 'LOSE item (ask self 'LOCATION)))
	 	     (ask self 'THINGS))
	    (ask self 'DEATH-SCREAM)
	    (ask death-exit 'USE self)
	    'GAME-OVER-FOR-YOU-DUDE))
   |#
	;; Your version goes here:
 
          ((DIE)
           (lambda (self)
             (ask self 'SAY '("SHREEEEK!  I, uh, suddenly feel very faint..."))
             (for-each (lambda (item) (ask self 'LOSE item (ask self 'LOCATION)))
                       (ask self 'THINGS))
             (ask self 'DEATH-SCREAM)
             (if (> lives 1)
                 (begin (set! lives (- lives 1)) (begin (set! health 3)
             (set! mobile-thing-part (make-mobile-thing name birthplace))))
                 (begin (ask death-exit 'USE self)
	   'GAME-OVER-FOR-YOU-DUDE )))
             
	   )   

	(else (find-method message mobile-thing-part container-part))))))

     
;_BANNER_
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;
        
;I created a new die method for make person class which checks if lives is greater than 1 and do the necessary adjusments that are told in our instructions.
     
     
     
;_BANNER_
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;     
     

     
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;_BANNER_
     
     
     
     
     
     
     
     
     

;_BANNER_
;;; Computer exercise: Perhaps to arm oneself against a sea of .... ;;;;
;_BANNER_
;;
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;
(define (make-weapon name location maxdamage)
  (let ((mobile-thing-part (make-mobile-thing name location)))
    (lambda (message)
      (case message
        ((WEAPON?) (lambda (self) #t))
        
        ((DAMAGE) (lambda (self) maxdamage))
        
        ((HIT) (lambda (self shooter target)
                 (let ((damage (random-number maxdamage)))
                   (ask target 'suffer damage)
                   (ask self 'emit shooter target))))
        ((EMIT)(lambda(self shooter target)
                 (ask shooter 'say (list "I hit" (ask target 'name) "using" (ask self 'name)))))
        (else (get-method message mobile-thing-part))))))

(define (create-weapon name location maxdamage)
  (create make-weapon name location maxdamage))
     
;_BANNER_
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;

; I created weapon class which is a subclass of mobile things and implemented differet methods like damage, hit.
     

;_BANNER_
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;
(define silah(make-weapon 'silah (ask me 'location) 25))
(define g (make-person 'umur2 (ask me 'location)))
(ask silah 'hit me g)
;At registrar-office umur2 says -- Ouch! 7 hits is more than I want! 
;At registrar-office umur2 says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;At registrar-office umur says -- I hit umur2 using silah
      
      
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;_BANNER_
      
      
      
      
      
      
     
     
      
      
;_BANNER_
;;;;;;;; Computer exercise: Good thing I'm armed and dangerous ;;;;;;;;;
;_BANNER_
;;
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;
(define (make-violent-person name birthplace activity miserly violence-rate)
  (let ((autonomous-player-part (make-autonomous-player name birthplace activity miserly)))
    (lambda (message)
      (case message
        ((VIOLENT-PERSON?) (lambda (self) #T))
        ((INSTALL) (lambda (self)
                     (ask clock 'ADD-CALLBACK
                          (make-clock-callback 'act-violently self
                                               'act-violently))
                     (delegate autonomous-player-part self 'install)))
        ((ACT-VIOLENTLY)   		      	 
         (lambda (self)
           (let ((randomviolencerate (random-number violence-rate))
                 (targets (ask self 'PEOPLE-AROUND))
                 (weapons (filter (lambda (w) (is-a w 'weapon?)) (ask self 'things)))))))
        ((DIE)    	  	   	 
	 (lambda (self)    	  	   	 
	   (ask clock 'remove-callback self 'act-violently)
	   (delegate autonomous-part self 'DIE)))
        (else (get-method message autonomous-part))))))

(define (create-violent-person name birthplace activity miserly violence-rate)
  (create make-violent-person name birthplace activity miserly violence-rate))

;_BANNER_
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;

;I created a new class which is a subclass, violent person. It has 4 different methods VIOLENT-PERSON?,ACT-VIOLENTLY,INSTALL,DIE,
     

;_BANNER_
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;
      
      
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;_BANNER_
     
     
     
     
     
     
     
     
;_BANNER_
;;; Computer exercise: A good hacker could defuse this situation ;;;;;;;
;_BANNER_
;;
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;
(define (make-bomb name location damage)
  (let ((mobile-thing-part (make-mobile-thing name location))
        (aware-thing-part (make-aware-thing))
        (armed #f)
        (destroyed #f))
    (lambda (message)
      (case message
        ((BOMB?) (lambda (self) #T))
        ((ARM) (lambda (self)
                 (set! armed #t)
                 'armed.))
        ((DISARM) (lambda (self)
                    (set! armed #f)
                    'disarmed.))
        ((DESTROY) 
         (lambda (self)
           (set! destroyed #t)
           (delegate mobile-thing-part self 'DESTROY)))
        (else (find-method message mobile-thing-part aware-thing-part))))))

(define (create-bomb name location damage)
  (create make-bomb name location damage))

;_BANNER_
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;

      
      
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;_BANNER_
     
     
     
     
     
;_BANNER_
;# DO NOT FORGET TO SUBMIT YOUR WORK BEFORE THE DEADLINE!         #
;_BANNER_
;# GOOD LUCK!                                                     #
;_BANNER_
     
     




