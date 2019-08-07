;;; ~/.doom.d/+py.el -*- lexical-binding: t; -*-

;;; Code
(defun run-python-buffer ()
  (interactive)
  (call-interactively
   'run-python)
  (python-shell-send-buffer)
  )

;; LSP-configuration
;; (def-package! lsp-mode
;;               :ensure t
;;               :config

;;               (require 'lsp-menu)
;;               (lsp-define-stdio-client lsp-python "python"
;;                                        #'projectile-project-root
;;                                        '("pyls"))

;;               (add-hook 'python-mode-hook
;;                         lambda ()
;;                         (lsp-python-enable)))

;; ;; LSP-extras
;; (def-package! lsp-ui
;;               :ensure t
;;               :config
;;               (setq lsp-ui-sideline-ignore-duplicate t)
;;               (add-hook 'lsp-mode-hook 'lsp-ui-mode))

;; (def-package! company-lsp
;;               :config
;;               (push 'company-lsp company-backends))
;; TODO: fix the lsp for python
