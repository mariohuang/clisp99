#!/usr/bin/clisp

(defun judge-mod (digi div)
(cond ((> (* div div) digi) T)
      ((= 0 (mod digi div)) nil)
      (t (judge-mod digi (+ 1 div)))))
    
(defun is-prime (digi)
(judge-mod digi 2))

(print (is-prime 51))
(print (is-prime 53))
(print (is-prime 55))
(print (is-prime 315))
