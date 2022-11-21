(defun find-first (l to-find &optional way (pos-in-cur-list 1))
    (cond ((null l) NIL)
          ((equal (car l) to-find) (append way (list pos-in-cur-list)))
          ((atom (car l)) (find-first (cdr l) to-find way (+ 1 pos-in-cur-list)))
          ((not (null (setq r (find-first (car l) to-find (append way (list pos-in-cur-list)) 1)))) r)
          (T (find-first (cdr l) to-find way (+ 1 pos-in-cur-list)))))
