#!/usr/bin/clisp

(load "P23.lisp")

(defun rnd-permu (org-list)
(rnd-select org-list (length org-list)))

(print (rnd-permu '(a b c d e f)))
