#!/usr/bin/clisp

(load "P10.lisp")
(load "P35.lisp")

(defun prime-factors-mult (num)
(encode (prime-factors num)))


(print (prime-factors-mult 315))
