(defvar *db* nil)

(defun make-cd (title artist rating)
  (list :title title :artist artist :rating rating))

(defun add-record (cd) 
  (push cd *db*))

