(setq a '("a" "ab" "df" "qwert"))
(defun search_max (lst)
	   (setq tmp (length (car lst)))
	   (defun search_m (lst max_loc)
      (cond ((null lst) 0)
	  ((> (length (car lst)) max_loc) ())
      (T (+ (car lst) (sumlist (cdr lst)))))))
 



;gnu dmd 2.49

(setq a '("a" "ab" "df" "qwert"))
;(defun search_max_string (list)
 ;     (cond ((null lst) 0)
  ;    (T (+ (car lst) (sumlist (cdr lst))))))
    
(defun max-length-number (w
                          &aux
                          (m (loop for a in w
                                   when (numberp a) maximize
                                   (length (write-to-string a)))))
  (find-if
   #'(lambda (a)
       (and (numberp a) (= (length (write-to-string a)) m)))
   w :from-end t))
 
(max-length-number '(aaa "bbb" "55"))
(max-length-number '(aaa "bbb" 55))
(max-length-number '(aaa "bbb" 55 66))
(max-length-number '(aaa "bbb" 555 66)) 
(print (sumlist a))
; (load "file")


