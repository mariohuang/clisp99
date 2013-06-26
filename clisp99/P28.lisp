#!/usr/bin/clisp

(load "merge-sort.lisp")

(defun cmp-func (elea eleb)
(cond ((and (eql elea nil) (eql eleb nil)) t)
      ((< (length elea) (length eleb)) t)
      ((< (length eleb) (length elea)) nil)
      ((eql (car elea) (car eleb)) (cmp-func (cdr elea) (cdr eleb)))
      (t)))

(defun lsort (org-list)
(merge-sort org-list #'cmp-func))

(print (lsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o))))

