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

(define o+
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (add1 (o+ n (sub1 m)))))))
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
;(define o-
;  (lambda (n m)
;    (cond
;      ((zero? m) n)
;      (else (sub1 (o- n (sub1 m)))))))
;
;(o- 14 3) ;11
;(o- 17 9) ;8
;(o- 18 25) ;-7

;pg 64
;(define addtup
;  (lambda (tup)
;    (cond
;      ((null? tup) 0)
;      (else (o+ (car tup) (addtup (cdr tup)))))))
;
;(addtup '(3 5 2 8)) ;18
;(addtup '(15 6 7 12 3)) ;43

(define x ;*
  (lambda (n m)
    (cond
      ((zero? m) 0)
      (else (o+ n (x n (sub1 m)))))))

;(x 5 3) ;15
;(x 13 4) ;52

;pg 66
;(x 12 3)

;pg 67
;(define tup+
;  (lambda (tup1 tup2)
;    (cond
;      ((and (null? tup1) (null? tup2))
;       '())
;      (else
;       (cons (o+ (car tup1) (car tup2))
;             (tup+ (cdr tup1) (cdr tup2)))))))
;
;(define tup1 '(3 6 9 11 4))
;(define tup2 '(8 5 2 0 7))
;(tup+ tup1 tup2) ;(11 11 11 11 11)
;
;;pg 68
;(tup+ '(2 3) '(4 6)) ;(6 9)
;
;;pg 69
;(tup+ '(3 7) '(4 6)) ;(7 13)

;pg 70
;(define tup+
;  (lambda (tup1 tup2)
;    (cond
;      ((and (null? tup1) (null? tup2))
;       '()) ; unnecessary tup2 will be ()
;      ((null? tup1) tup2)
;      ((null? tup2) tup1)
;      (else
;       (cons (o+ (car tup1) (car tup2))
;             (tup+ (cdr tup1) (cdr tup2)))))))
;
;(tup+ '(3 7) '(4 6 8 1)) ;(7 13 8 1)
;(tup+ '(3 7 8 1) '(4 6)) ;(7 13 8 1)

;pg 71
(define greater ;>
  (lambda (n m)
    (cond
      ((zero? n) #f)
      ((zero? m) #t)
      (else (greater (sub1 n) (sub1 m))))))
;
;(greater 12 133) ;#f
;(greater 120 11) ;#t
;
;;pg 72
;(greater 3 3) ;#f

;pg 73
(define lesser ;<
  (lambda (n m)
    (cond
      ((zero? m) #f)
      ((zero? n) #t)
      (else (lesser (sub1 n) (sub1 m))))))
;
;(lesser 4 6) ;#t
;(lesser 8 3) ;#f
;(lesser 6 6) ;#f

;pg 74
(define eq
  (lambda (n m)
    (cond
      ((greater n m) #f)
      ((lesser n m) #f)
      (else #t))))
;
;(eq 3 3) ;#t
;(eq 6 6) ;#t
;(eq 4 6) ;#f
;(eq 8 3) ;#f

;(define ^ ;expt
;  (lambda (n m)
;    (cond
;      ((zero? m) 1)
;      (else (x n (^ n (sub1 m)))))))
;
;(^ 1 1) ;1
;(^ 2 3) ;8
;(^ 5 3) ;125

;pg 75
;(define div
;  (lambda (n m)
;    (cond
;      ((< n m) 0)
;      (else (add1 (div (- n m) m))))))
;
;(div 15 4)

;pg 76
;(define len
;  (lambda (lat)
;    (cond
;      ((null? lat) 0)
;      (else (add1 (len (cdr lat)))))))
;
;(define lat1 '(hotdogs with mustard sauerkraut and pickles))
;(len lat1) ;6
;
;(define lat2 '(ham and cheese on rye))
;(len lat2) ;5

;(define pick
;  (lambda (n lat)
;    (cond
;      ((zero? (sub1 n)) (car lat))
;      (else (pick (sub1 n) (cdr lat))))))
;
;(define lat '(lasagna spaghetti ravioli macaroni meatball))
;(pick 4 lat) ;macaroni

;pg 77
;(define rempick
;  (lambda (n lat)
;    (cond
;      ((zero? (sub1 n)) (cdr lat))
;      (else (cons (car lat)
;                  (rempick (sub1 n) (cdr lat)))))))
;
;(define lat '(hotdogs with hot mustard))
;(rempick 3 lat) ;(hotdogs with mustard)

;(number? 'tomato) ;#f
;(number? 76) ;#t

(define no-nums
  (lambda (lat)
    (cond
      ((null? lat) '())
      ((number? (car lat)) (no-nums (cdr lat)))
      (else (cons (car lat)
                  (no-nums (cdr lat)))))))
(define lat '(5 pears 6 prunes 9 dates))
(no-nums lat) ;(pears prunes dates)

;pg 78

(define all-nums
  (lambda (lat)
    (cond
      ((null? lat) '())
      ((not (number? (car lat))) (all-nums (cdr lat)))
      (else (cons (car lat)
                  (all-nums (cdr lat)))))))

(all-nums lat) ;(5 6 9)

