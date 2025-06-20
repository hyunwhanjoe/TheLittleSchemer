#lang sicp

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;pg 3
;(atom? 'atom) ;#t
;(atom? 'turkey) ;#t
;(atom? 1492) ;#t
;(atom? 'u) ;#t
;(atom? '*abc$) ;#t
;'(atom) ; yes
;'(atom turkey or) ; yes

;pg 4
;'(atom turkey) or ; no
;'((atom turkey) or) ; yes
;'xyz ; yes
;'(x y z) ; yes
;'((x y) z) ; yes
;'(how are you doing so far) ; yes
;'(how are you doing so far) ; 6
;'(((how) are) ((you)(doing so)) far) ; yes
;'(((how) are) ((you)(doing so)) far) ; 3

;pg 5
;'() ; yes
;(atom? '()) ;#f
;'(()()()()) ;yes
;(car '(a b c)) ;a
;(car '((a b c) x y z)) ;(a b c)
;(car 'hotdog) ; no answer
;(car '()) ; no answer