;;; Description: Custom key bindings and functions for org-mode
;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-

(add-to-list 'load-path "~/org")

;; set org-agenda-files explicitly
(setq org-agenda-files
      (list "~/org/agendas/personal.org" "~/org/agendas/work.org"))
