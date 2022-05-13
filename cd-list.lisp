(defvar *db* nil)

(defun make-cd (title artist rating)
  (list :title title :artist artist :rating rating))

(defun add-cd (cd) 
  (push cd *db*))

(defun print-db ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~%~}~%" cd)))

(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-make-cd ()
  (make-cd
    (prompt-read "Title")
    (prompt-read "Artist")
    (parse-integer (prompt-read "Rating") :junk-allowed t)))
