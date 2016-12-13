;Список состоит из подсписков,содержащих по 3 числовых элемента.
;Составить списки тех троек, которые могут являться длинами
;сторон остроугольных треугольников.

(setq a '((2 3 4) (5 3 4) (4 5 6) (6 3 2)))
(setq b '(4 3 8))


(defun sq (a)
	(* a a)
)


(defun check_triangle_q (lst)
	(cond 
		((= (sq (car lst)) (+ (sq (cadr lst)) (sq (caddr lst)))) T)
        ((= (sq (cadr lst)) (+ (sq (car lst)) (sq (caddr lst)))) T)
        ((= (sq (caddr lst)) (+ (sq (car lst)) (sq (cadr lst)))) T)
		(T NIL)
	)
)


(defun check_triangle (lst)
	(cond 
		((check_triangle_q lst) NIL)
		((< (sq (car lst)) (+ (sq (cadr lst)) (sq (caddr lst)))) T)
        ((< (sq (cadr lst)) (+ (sq (car lst)) (sq (caddr lst)))) T)
        ((< (sq (caddr lst)) (+ (sq (car lst)) (sq (cadr lst)))) T)
		(T NIL)
	)
)


	(defun check_lst_triang (lst)
		(cond
			((null lst) NIL)
			((check_triangle (car lst)) (cons (car lst) (check_lst_triang (cdr lst))))
            (T (check_lst_triang (cdr lst)))
		)
	)
(check_lst_triang a)
(setf res (check_lst_triang a))
(print res)
;(print (check_triangle_q b))
;(print (check_triangle b))