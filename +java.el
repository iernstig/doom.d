;;; ~/.doom.d/+java.el -*- lexical-binding:


(def-package! dap-mode
  :ensure t :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

(def-package! dap-java :after (lsp-java))

