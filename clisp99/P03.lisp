#!/usr/bin/clisp

(defun element-at (org-list kth)
(cond ((eql org-list nil) nil)
      ((eql kth 1) (car org-list))
      (t (element-at (cdr org-list) (decf kth)))
)
)

(print (element-at '(a b c d e f g) 4))
