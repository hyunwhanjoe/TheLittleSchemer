#lang sicp

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; recursion
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

;pg 15
;lat? list of atoms
;(lat? '(Jack Sprat could eat no chicken fat)) ;#t
;(lat? '((Jack) Sprat could eat no chicken fat)) ;#f
;(lat? '(Jack (Sprat could) eat no chicken fat)) ;#f
;(lat? '()) ;#t

;pg 16
;(define l '(bacon and eggs))
;(lat? l) ;#t
;(null? l) ;#f

;pg 19
;(define l '(bacon (and eggs)))
;(lat? l) ;#f

;pg 21
;(or (null? '()) (atom? '(d e f g))) 
;(or (null? '(a b c)) (null? '()))
;(or (null? '(a b c)) (null? '(atom)))

(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) a)
                (member? a (cdr lat)))))))
;pg 22
(member? 'tea '(coffee tea or milk)) ;True
(member? 'poached '(fried eggs and scrambled eggs)) ;False
(member? 'meat '(mashed potatoes and meat gravy)) ;#t