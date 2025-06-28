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

;pg 6
;(car '(((hotdogs)) (and) (pickle) relish)) ;((hotdogs))
;(car '(((hotdogs)) (and) (pickle) relish)) ;((hotdogs))
;(car (car '(((hotdogs)) (and)))) ;(hotdogs)
;(cdr '(a b c)) ;(b c)
;(cdr '((a b c) x y z)) ;(x y z)
;(cdr '(hamburger)) ;()
;(cdr '((x) t r)) ;(t r)
;(cdr 'hotdogs) ;no answer

;pg 7
;(cdr '()) ;no answer
;(car (cdr '((b) (x y) ((c))))) ;(x y)
;(cdr (cdr '((b) (x y) ((c))))) ;(((c)))
;(cdr (car '(a (b (c)) d))) ;no answer
;(cons 'peanut '(butter jelly)) ;(peanut butter jelly)

;pg 8
;(cons '(banana and) '(peanut butter and jelly))
;((banana and) peanut butter and jelly)
;(cons '((help) this) '(is very ((hard) to learn)))
;(((help) this) is very ((hard) to learn))
;(cons '(a b (c)) '()) ;((a b (c)))
;(cons 'a '()) ;(a)
;(cons '((a b c)) 'b) ;no answer
;(cons 'a 'b) ;no answer 'b isn't a list

;pg 9
;(cons 'a (car '((b) c d))) ;(a b)
;(car '((b) c d)) ;(b)
;(cons 'a (cdr  '((b) c d))) ;(a c d)
; (cdr  '((b) c d)) ;(c d)
;(null? '()) ;#t
;(null? (quote ())) ;#t
;(null? '(a b c)) ;#f

;pg 10
;(null? 'a) ;no answer
;(atom? 'Harry) ;#t
;(atom? '(Harry had a heap of apples)) ;#f