#!/usr/bin/clisp

(defun remove-at (org-list kth)
(cond ((eql org-list nil) nil)
      ((eql kth 1) (cdr org-list))
      (t (cons (car org-list) (remove-at (cdr org-list) (decf kth))))))

(print (remove-at '(a b c d) 2))
