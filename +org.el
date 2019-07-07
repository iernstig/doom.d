;;; Description: Custom key bindings and functions for org-mode
;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-

(add-to-list 'load-path "~/org")

;; ;; set org-agenda-files explicitly
(setq org-agenda-files
      (list "~/org/todo"))

(setq org-default-notes-file (concat org-directory "~/org/todo/inbox.org"))

(setq org-tag-alist '(("important" . ?i)
                      ("urgent" . ?u)))
