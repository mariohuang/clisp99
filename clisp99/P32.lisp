#!/usr/bin/clisp

(defun gcd (num-a num-b)
(if (= num-b 0) num-a 
    (gcd num-b (mod num-a num-b))))

(print (gcd 4 60))
(print (gcd 30 4))
(print (gcd 44 3))
(print (gcd 3 44))
