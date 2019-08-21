;;; ~/.doom.d/+py.el -*- lexical-binding: t; -*-

;;; Code
(defun run-python-buffer ()
  (interactive)
  (call-interactively
   'run-python)
  (python-shell-send-buffer)
  )

