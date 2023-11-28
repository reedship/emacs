(require 'ox)
(customize-set-value 'org-latex-with-hyperref nil)
;; Install visual-fill-column
(unless (package-installed-p 'visual-fill-column)
  (package-install 'visual-fill-column))


;; Configure fill width
(setq visual-fill-column-width 110
      visual-fill-column-center-text t)
;;(add-hook 'org-mode-hook 'writeroom-mode)
(add-hook 'org-mode-hook 'visual-line-mode)

(defun reed/startup-org ()
;;  (writeroom-mode 1)
  (visual-line-mode 1)
  (org-bullets-mode 1)
  (hl-line-mode -1))
(add-hook 'org-mode-hook 'reed/startup-org)
(defun my/org-present-start ()
  ;; Center the presentation and wrap lines
  (visual-fill-column-mode 1)
  (visual-line-mode 1))

(defun my/org-present-end ()
  ;; Stop centering the document
  (visual-fill-column-mode 0)
  (visual-line-mode 0))
    (setq org-startup-indented t
          org-pretty-entities t
          org-hide-emphasis-markers t
          org-startup-with-inline-images t
          org-image-actual-width '(300))
;; Register hooks with org-present
;;(add-hook 'org-present-mode-hook 'my/org-present-start)
;;(add-hook 'org-present-mode-quit-hook 'my/org-present-end)

;; remove indents when writing narratives
;; (defun narratives-settings ()
;;   "Custom settings for narratives."
;;   when (and (buffer-file-name)
;;             (string-prefix-p "/Users/reed/dev/narratives/short stories" (buffer-file-name)))
;;   (setq org-indent-mode -1)
;;   (setq visual-line-mode 1))
;; (add-hook 'org-mode-hook 'narratives-settings)


;; create our org-roam vault if it doesn't already exists
(unless (file-exists-p "~/vault")
  (make-directory "~/vault"))

(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/vault")
  (org-roam-completion-everywhere t)
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         :map org-mode-map
         ("C-M-i" . completion-at-point)
         :map org-roam-dailies-map
         ("Y" . org-roam-dailies-capture-yesterday)
         ("T" . org-roam-dailies-capture-tomorrow))
  :bind-keymap
  ("C-c n d" . org-roam-dailies-map)
  :config
  (require 'org-roam-dailies) ;; Ensure the keymap is available
  (org-roam-db-autosync-mode))

(setq org-roam-dailies-directory "journal/")
