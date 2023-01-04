(use-package dashboard
  :ensure t
  )

(setq dashboard-startup-banner 'logo)
;;(setq dashboard-projects-backend . "projectile")
(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))
(setq dashboard-center-content t)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
(dashboard-setup-startup-hook)
