#!/usr/bin/clisp

(defun drop (org-list kth)
(drop-kth org-list kth 1))

(defun drop-kth (org-list kth now)
(cond ((eql org-list nil) nil)
      ((eql now kth) (drop-kth (cdr org-list) kth 1 ))
      (t (cons (car org-list) 
	 (drop-kth (cdr org-list) kth (+ now 1)))
      )
))

(print (drop '(a b c d e f g h i k) 3))
