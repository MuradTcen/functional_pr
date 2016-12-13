;Написать функцию, которая находит в
;данном списке строку максимальной длины.


(defparameter *count* 0)
(setq a '("asdsd asdsad" "asd" "qwe" "a"))
   
(defun search_max_length (lst)
    (cond ((null lst) *count*)
    (T (if (>= (length (car lst)) *count*) (setf *count* (length (car lst))) ) (search_max_length (cdr lst)))
    (cond T (*count*))
    )
)

(defun string_max_length (lst)
    (cond ((null lst) nil)
    (T (if (= (length (car lst)) (search_max_length lst)) (print (car lst))) (string_max_length (cdr lst)))
    
    )
    
)

(print (search_max_length a))
(string_max_length a)
