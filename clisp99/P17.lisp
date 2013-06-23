#!/usr/bin/clisp

(defun split (org-list pos)
(list (split-before org-list pos) (split-after org-list pos)))


(defun split-before (org-list pos &optional (now 0))
(if (> pos now)
    (cons (car org-list) (split-before (cdr org-list) pos (incf now)))))


(defun split-after (org-list pos &optional (now 0))
(if (<= pos now)
     org-list
     (split-after (cdr org-list) pos (incf now))))
    

(print (split '(a b c d e f g h i k) 3))


