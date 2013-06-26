#!/usr/bin/clisp

(defun my-append (gen-list org-list)
(if (listp (car org-list)) 
    (my-append gen-list (car org-list))
    (append gen-list org-list)))

(defun append-combination (gen-list org-list)
(if (eql org-list nil) 
     nil
     (append (list (my-append gen-list (list (car org-list)))) (append-combination gen-list (cdr org-list)))))
     
(defun combination (cnt org-list)
(cond ((eql org-list nil) nil)
      ((eql cnt 1) org-list)
      ((> cnt (length org-list)) nil)
      (t (append (append-combination (list (car org-list)) (combination (- cnt 1) (cdr org-list))) (combination cnt (cdr org-list))))
)
)

(print (combination 4 '(a b c d e f g h)))
