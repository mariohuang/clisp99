#!/usr/bin/clisp

(defun range (begin end)
    (loop for i from begin to end collecting i))

(print (range 4 9))

(print (range 9 4))
