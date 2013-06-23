#!/usr/bin/clisp

(defun slice (org-list begin end)
(cond ((eql org-list nil) nil)
      ((eql end 0) nil )
      ((eql begin 1) (cons (car org-list) (slice (cdr org-list) begin (decf end))))
      (t (slice (cdr org-list) (decf begin) (decf end)))
)
)

(print (slice '(a b c d e f g h i k) 3 7))

(print (slice '(a b c d e f g h i k) 1 1))

(print (slice '(a b c d e f g h i k) 1 10))
