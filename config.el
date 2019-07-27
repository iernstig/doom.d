;;; package --- summary
;;; Personal key configuration
;;; commentary:
;;;

;; Place your private configuration here
(after! whitespace-mode
(progn
  (setq whitespace-style (quote (face spaces tabs newline space-mark tab-mark newline-mark)))
  (setq whitespace-display-mappings
        '(
          (space-mark 183)
          (newline-mark 8629)
          (tab-mark 9654))
        )
  )
)
(defun run-python-buffer ()
  (interactive)
  (call-interactively
   'run-python)
  (python-shell-send-buffer)
  )


;;---------- load other configuration files after initial config ----------;;
(load! "+bindings")
(load! "+org")
(load! "+py")
(load! "+appearance.el")
