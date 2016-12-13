(setq a '((11,3,6) 2 4))
(defun sumlist (lst)
      (cond ((null lst) 0)
      (T (+ (car lst) (sumlist (cdr lst))))))
    
(print (sumlist a))
; (load "file")
