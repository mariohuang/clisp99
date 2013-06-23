#!/usr/bin/clisp

(load "P18.lisp")

(defun rotate (org-list begin)
(cond ((eql org-list nil) nil)
      ((eql begin 0) org-list)
      ((> begin 0) (append (slice org-list (incf begin) (length org-list)) (slice org-list 1 (decf begin))))
      ((< begin 0) (append (slice org-list (+ (length org-list) (incf begin)) (length org-list)) (slice org-list 1 (+ (length org-list) (decf begin)))))))

(print (rotate '(a b c d e f g h) 3))

(print (rotate '(a b c d e f g h) -2))
