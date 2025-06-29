#lang sicp

;lat? list of atoms
;(lat? '(Jack Sprat could eat no chicken fat)) ;#t
;(lat? '((Jack) Sprat could eat no chicken fat)) ;#f
;(lat? '(Jack (Sprat could) eat no chicken fat)) ;#f
;(lat? '()) ;#t