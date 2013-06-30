#!/usr/bin/clisp

(load "P32.lisp")

(defun coprime (num-a num-b)
(= 1 (gcd num-a num-b)))

(print (coprime 35 64))
(print (coprime 35 63))
