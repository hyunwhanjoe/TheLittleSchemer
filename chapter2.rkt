#lang sicp

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l))(lat? (cdr l)))
      (else #f))))

;pg 15
;lat? list of atoms
;(lat? '(Jack Sprat could eat no chicken fat)) ;#t
;(lat? '((Jack) Sprat could eat no chicken fat)) ;#f
;(lat? '(Jack (Sprat could) eat no chicken fat)) ;#f
;(lat? '()) ;#t

;pg 16
(lat? '(bacon and eggs)) ;#t
