#lang sicp

;pg 33
;(define lat '(lamb chops and mint jelly)) 
;(rember 'mint lat) ;(lamb chops and jelly)
;(define lat '(lamb chops and mint flavored mint jelly))
;(rember 'mint lat) ;(lamb chops and flavored mint jelly)
;(define lat '(bacon lettuce and tomato))
;(rember 'toast lat) ;(bacon lettuce and tomato)
;(define lat '(coffee cup tea cup and hick cup))
;(rember 'cup lat) ;(coffee tea cup and hick cup)

;pg 34
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((eq? (car lat) a) (cdr lat))
              (else (rember a
                            (cdr lat))))))))

(define lat '(bacon lettuce and tomato))
(rember 'bacon lat) ;(lettuce and tomato)