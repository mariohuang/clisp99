#!/usr/bin/clisp

(load "P17.lisp")

(defun merge-list (lista listb cmp-func)
(cond ((eql lista nil) listb)
      ((eql listb nil) lista)
      ((funcall cmp-func (car lista) (car listb))
       (append (list (car lista)) (merge-list (cdr lista) listb cmp-func)) )
      (t (append (list (car listb)) (merge-list lista (cdr listb) cmp-func)))
      )
)
      
(defun merge-sort (org-list cmp-func)
(cond ((eql org-list nil) nil)
      ((eql (length org-list) 1) org-list)
      (t (let ( (split-res (split org-list (floor (/ (+ 1 (length org-list)) 2)))) ) 
              (merge-list (merge-sort (car split-res) cmp-func) (merge-sort (cadr split-res) cmp-func) cmp-func)))
      )
)

