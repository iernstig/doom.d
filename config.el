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
(after!
(load! "+bindings")
