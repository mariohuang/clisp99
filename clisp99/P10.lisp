#!/usr/bin/clisp

(defun find-same (org-list num)
(cond ((eql org-list nil) nil)
      ((eql (cdr org-list) nil) (list num (car org-list)))
      ((eql (car org-list) (cadr org-list))
          (find-same (cdr org-list) (+ 1 num)))
      (t (list num (car org-list)))))

(defun next-list (org-list)
(cond ((eql org-list nil) nil)
      ((eql (cdr org-list) nil) nil)
      ((eql (car org-list) (cadr org-list))
          (next-list (cdr org-list)))
      (t (cdr org-list))))


(defun encode (org-list)
(cond ((eql org-list nil) nil)
      (t (cons (find-same org-list 1) (encode (next-list org-list))))))


(print (encode '(a a a a b c c a a d e e e e)))

