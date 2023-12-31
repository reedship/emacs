;; projectile
(projectile-mode 1)

(use-package projectile
  :bind
  ("C-c v" . projectile-ag)

  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-commander)

  (setq projectile-switch-project-action 'projectile-find-file
        projectile-require-project-root nil))
(setq projectile-project-search-path '("~/dev/", "~/work/"))
(define-key projectile-mode-map (kbd "C-c C-p f") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c C-p c") 'projectile-compile-project)
