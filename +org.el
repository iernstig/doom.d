;;; Description: Custom key bindings and functions for org-mode
;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-

(add-to-list 'load-path "~/org")

;; ;; set org-agenda-files explicitly
(setq org-agenda-files
      (list "~/org/todo"))

(setq org-default-notes-file (concat org-directory "~/org/todo/inbox.org"))

;; tag setting settings
(setq org-tag-alist '(("important" . ?i)
                      ("urgent" . ?u)
                      ("Priority A" . ?a)
                      ("Priority B" . ?b)))

;; Eisenhovwer Matrix presets
(setq org-agenda-custom-commands
      '(("1" "Q1" tags-todo "+important+urgent")
        ("2" "Q2" tags-todo "+important-urgent")
        ("3" "Q3" tags-todo "-important+urgent")
        ("4" "Q4" tags-todo "-important-urgent")))

(setq org-log-done 'time)
