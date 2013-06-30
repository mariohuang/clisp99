#!/usr/bin/clisp

(load "P31.lisp")
 
(defun find-prime-factors (num test-num)
(cond ((is-prime num) (list num))
      ((= num 1) (list 1))
      ((= 0 (mod num test-num))
            (append (list test-num) (find-prime-factors (/ num test-num) 2)))
      (t (find-prime-factors num (+ 1 test-num)))))


(defun prime-factors (num)
    (find-prime-factors num 2))

(print (prime-factors 315))


