#!/usr/bin/clisp

(load "P03.lisp")
(load "P20.lisp")


(defun rnd-select (org-list cnt)
(cond ((eql org-list nil) nil)
      ((eql cnt 0) nil)
      (t (let ((rd (+ (random (length org-list)) 1)))
               (cons (element-at org-list rd) (rnd-select (remove-at org-list rd) (decf cnt)))))))


(print (rnd-select '(a b c d e f g h) 3))
