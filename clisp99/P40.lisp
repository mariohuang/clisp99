#!/usr/bin/clisp

(load "P31.lisp")

(defun find-goldbach-list (lower num)
(if (and (is-prime lower) (is-prime (- num lower)))
    (list lower (- num lower))
    (find-goldbach-list (+ lower 1) num)))

(defun goldbach (num)
(if (= 2 num) 
    (list 1 1)
    (find-goldbach-list 1 num)))

(print (goldbach 2))
(print (goldbach 28))
