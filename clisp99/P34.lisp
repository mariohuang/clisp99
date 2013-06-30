#!/usr/bin/clisp

(load "P33.lisp")


(defun totient-phi-cal (num test-num)
(cond ((= test-num num) 0)
      ((coprime num test-num) (+ 1 (totient-phi-cal num (+ 1 test-num))))
      (t (totient-phi-cal num (+ 1 test-num)))))

(defun totient-phi (num)
(cond ((= num 1) 1)
      (t (totient-phi-cal num 1))))

(print (totient-phi 10))
(print (totient-phi 1))
(print (totient-phi 100))

