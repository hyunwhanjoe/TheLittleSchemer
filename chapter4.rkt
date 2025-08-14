#lang sicp

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

;pg 59
;(atom? 14) ;#t
;(add1 67) ;68
;(sub1 5) ;4

;pg 60
;(sub1 0) ;-1
;(zero? 0) ;#t
;(zero? 1492) ;#f

;(define o+
;  (lambda (n m)
;    (cond
;      ((zero? m) n)
;      (else (add1 (o+ n (sub1 m)))))))
;
;; tail-recursive?
;;(define o+
;;  (lambda (n m)
;;    (cond
;;      ((zero? m) n)
;;      (else (o+ (add1 n) (sub1 m))))))
;
;(o+ 46 12) ;58

;pg 61
(define o-
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (sub1 (o- n (sub1 m)))))))

(o- 14 3) ;11
(o- 17 9) ;8
(o- 18 25) ;-7
