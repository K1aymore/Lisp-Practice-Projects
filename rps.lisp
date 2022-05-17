(defvar *results* nil)

(defun prompt (q)
  (format *query-io* "~a: " q)
  (force-output *query-io*)
  (read-line *query-io*))


(defun start ()
  (if (random 3)
      ()))
