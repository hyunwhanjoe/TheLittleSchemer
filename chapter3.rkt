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
;(define rember
;  (lambda (a lat)
;    (cond
;      ((null? lat) (quote ()))
;      (else (cond
;              ((eq? (car lat) a) (cdr lat))
;              (else (rember a
;                            (cdr lat))))))))

;(define lat '(bacon lettuce and tomato))
;(rember 'bacon lat) ;(lettuce and tomato)

;pg 35
;(define lat '(bacon lettuce and tomato))
;(rember 'and lat) ;(tomato)

;pg 37
;(define rember
;  (lambda (a lat)
;    (cond
;      ((null? lat) (quote ()))
;      (else (cond
;              ((eq? (car lat) a) (cdr lat))
;              (else (cons (car lat)
;                          (rember a (cdr lat)))
;                    ))))))

;(define lat '(bacon lettuce and tomato))
;(rember 'and lat) ;(bacon lettuce tomato)

;pg 41
;(define rember
;  (lambda (a lat)
;    (cond
;      ((null? lat) (quote ()))
;      ((eq? (car lat) a) (cdr lat))
;      (else (cons (car lat)
;                  (rember a (cdr lat)))))))
;(rember 'and lat) ;(bacon lettuce tomato)

;pg 42
;(define lat '(soy sauce and tomato sauce))
;(rember 'sauce lat) ;(soy and tomato sauce)

;pg 43
;(define l '((apple peach pumpkin)
;            (plum pear cherry)
;            (grape raisin pea)
;            (bean carrot eggplant)))
;(first l) ;(apple plum grape bean)

;(define l '((a b) (c d) (e f)))
;(firsts l) ;(a c e)

;(firsts '()) ;()

;(define l '((five plums)
;            (four)
;            (eleven green oranges)))
;(firsts l) ;(five four eleven)

;(define l '(((five plums) four)
;           (eleven green oranges)
;           ((no) more)))
;(firsts l) ;((five plums) eleven (no))

(define firsts
  (lambda (l)
    (cond
      ((null? l) '())
      (else (cons (car (car l))
                  (firsts (cdr l)))
            ))))

; pg 47
(define l '((a b) (c d) (e f)))
(firsts l) ;(a c e)