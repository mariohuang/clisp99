#!/usr/bin/clisp

(defun insert-at (elem org-list kth)
(cond ((eql org-list nil) nil)
      ((eql kth 1) (cons elem org-list))
      (t (cons (car org-list) (insert-at elem (cdr org-list) (decf kth))))))


(print (insert-at 'alfa '(a b c d) 2))
