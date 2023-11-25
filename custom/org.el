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
