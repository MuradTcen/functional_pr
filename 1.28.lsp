;Написать функцию, 
;которая находит в данном списке 
;количество подсписков, содержащих число 9.
(setq a '((1 9 8) (2 3 8) 4 5 6 9))
(setq b '(1 6 7))

(defun is_in_list (lst numb)
    (cond ((null lst) 0)
    ((atom lst) (if (= lst numb) 1 0))
    (T (+ (if (= (car lst) numb) 1 0) (is_in_list (cdr lst) numb)))
)    
)
(print (is_in_list b 1))
(defun check (lst numb)
    (cond ((null lst) 0)
    (T (+ (if (> (is_in_list (car lst) numb) 0) 1 0) (check (cdr lst) numb)))
    )
)
(print (check a 9))