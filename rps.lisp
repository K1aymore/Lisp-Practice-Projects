(defvar *results* nil)
(defvar rand nil)
(defvar player nil)


(defun prompt (q)
  (format *query-io* "~a: " q)
  (force-output *query-io*)
  (parse-integer (read-line *query-io*) :junk-allowed t))


;; 0 rock
;; 1 paper
;; 2 scissors
(defun play ()
  (setq rand (random 3))
  (setq player (prompt "What do you play"))
  (format t (concatenate 'string "They played: " (write-to-string rand)))
  (if (= rand player)
      (push "draw" *results*)
      (if (and (= player 0) (= rand 2))
        (push "win" *results*)
        (if (and (= player 1) (= rand 0))
          (push "win" *results*)
          (if (and (= player 2) (= rand 1))
            (push "win" *results*)
            (push "lose" *results*))))))