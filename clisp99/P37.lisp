#!/usr/bin/clisp

(load "P36.lisp")

(defun power(a b)
(cond ((= b 0) 1)
      ((= b 1) a)
      (t (let ((pow-value (power a (floor (/ b 2)))))
              (if (= (mod b 2) 1)
                  (* pow-value pow-value a)
                  (* pow-value pow-value))))))


(defun calc-elem (elem)
(let ((m (car elem))
      (p (cadr elem)))
     (* (- p 1) (power p (- m 1)))))

(defun calc-by-prim-factors (org-list)
(if (eql org-list nil) 
    1 
    (* (calc-elem (car org-list)) (calc-by-prim-factors (cdr org-list)))))

(defun phi (m)
(calc-by-prim-factors (prime-factors-mult m)))

(print (phi 315))
(print (phi 72))

