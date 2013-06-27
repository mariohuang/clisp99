#!/usr/bin/clisp

(defun my-flatten-with-deps (deps org-list)
(cond ((eql org-list nil) nil)
      ((eql deps 0) org-list)
      ((listp (car org-list))
              (append (my-flatten-with-deps (- deps 1) (car org-list)) (my-flatten-with-deps deps (cdr org-list))))
      (t (append (list (car org-list)) (my-flatten-with-deps deps (cdr org-list))))))

(defun my-flatten (org-list)
(my-flatten-with-deps -1 org-list))


(print (my-flatten '(a (b (c d) e))))
