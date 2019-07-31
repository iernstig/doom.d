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

(defun org-archive-done-tasks-in-file ()
  (interactive)
  (org-map-entries
   (lambda ()
     (org-archive-subtree)
     (setq org-map-continue-from (outline-previous-heading)))
   "/DONE" 'file)) ;; could be 'tree or 'file

;; Eisenhovwer Matrix presets
(setq org-agenda-custom-commands
      '(("1" "Q1" tags-todo "+important+urgent")
        ("2" "Q2" tags-todo "+important-urgent")
        ("3" "Q3" tags-todo "-important+urgent")
        ("4" "Q4" tags-todo "-important-urgent")))

(def-package! org-super-agenda
  :init
  (setq org-super-agenda-gropus '((:name "Today"
                                         :time-grid t
                                         :scheduled today)
                                  (:name "Due today"
                                          :deadline today)
                                  (:name "Important"
                                         :priority "A")
                                  (:name "Due soon"
                                         :deadline future)
                                  (:name "Big outcomes"
                                         :tag "bo"))))



(setq org-log-done 'time)
