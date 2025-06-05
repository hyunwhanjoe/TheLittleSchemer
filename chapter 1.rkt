#lang sicp

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;pg 3
;(atom? 'atom)
;(atom? 'turkey)
;(atom? 1492)
;(atom? 'u)
;(atom? '*abc$)
;(pair? '(atom)) #t
;(pair? '(atom turkey or)) #t

;pg 4