#!/usr/bin/clisp

(defun gen ( elem num )
(if (> num 0)
    (cons elem (gen elem (- num 1)))
    nil )
)

(defun repli (org-list num)
(if (eql nil org-list)
    nil
    (append (gen (car org-list) num) (repli (cdr org-list) num)))
)

(print (repli '(a b c d) 3))

