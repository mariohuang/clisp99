#!/usr/bin/clisp

(load "P31.lisp")

(defun collect-prim (lower upper)
(cond ((> lower upper) nil)
      ((is-prime lower) (cons lower (collect-prim (+ lower 1) upper)))
      (t (collect-prim (+ lower 1) upper))))
      
(print (collect-prim 1 100))
