#!/usr/bin/clisp

(load "P34.lisp")
(load "P37.lisp")

(defun compare-func (func1 func2 args)
(eql (funcall func1 args) (funcall func2 args)))

(print (phi 10090))
(print (totient-phi 1090))

;(print (compare-func #'totient-phi #'phi 10090))

