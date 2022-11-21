;; Учебное программирование - тема доклада
(defun insert-first (l before to-insert &optional result)
    (cond ((null l) result)
          ((equal (car l) before) (append result (list to-insert) l))
          ((atom (car l)) (insert-first (cdr l) before to-insert (append result (list (car l)))))
          ((not (equal (setq r (insert-first (car l) before to-insert)) (car l))) (append result (list r) (cdr l)))
          (T (insert-first (cdr l) before to-insert (append result (list (car l)))))))