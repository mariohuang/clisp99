#!/usr/bin/clisp


(load "P07.lisp")
(load "P28.lisp")

(defun freq-cmp (elea eleb)
(< (length elea) (length eleb)))

(defun find-length2 (ret-list org-list)
(cond ((eql org-list nil) ret-list)
      ((eql ret-list nil) (find-length2 (list (car org-list)) (cdr org-list)))
      ((eql (length (car ret-list)) (length (car org-list))) 
          (find-length2 (append ret-list (list (car org-list))) (cdr org-list))) 
      (t ret-list)))

(defun find-length (org-list)
(find-length2 '() org-list))

(defun next-length (org-list)
(cond ((eql org-list nil) nil)
      ((eql (cdr org-list) nil) nil)
      ((eql (length (car org-list)) (length (cadr org-list))) (next-length (cdr org-list)))
      (t (cdr org-list))))

(defun merge-length-list (org-list)
(if (eql org-list nil) 
    nil
   (cons (find-length org-list) (merge-length-list (next-length org-list)))
)
)

(defun lfsort (org-list)
(my-flatten-with-deps 1 (merge-sort (merge-length-list (lsort org-list)) #'freq-cmp)))

(print (lfsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o))))

