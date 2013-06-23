#!/usr/bin/clisp

(load "P23.lisp")

(defun lotto-select (cnt max-num)
(rnd-select (loop for i from 1 to max-num collecting i) cnt))


(print (lotto-select 6 49))
