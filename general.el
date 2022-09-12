;; Configure shell to pull pash from ~/.zshrc
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
;; Exec path from shell
(let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path
        (append
         (split-string-and-unquote path ":")
         exec-path)))
;; frame scaling / zooming
;; default key-bindings are C+M+- and C+M+
(use-package default-text-scale
  :defer 1
  :config
  (default-text-scale-mode))

;; control buffer placement
(setq display-buffer-base-action
      '(display-buffer-reuse-mode-window
        display-buffer-reuse-window
        display-buffer-same-window))
;; company mode
(add-hook 'after-init-hook 'global-company-mode)

;; Clean up whitespace
(use-package ws-butler
  :hook ((text-mode . ws-butler-mode)
	 (prog-mode . ws-butler-mode)))

;; hide minor modes from modelines
(use-package diminish)
(use-package ag)
;; Ivy mode
(ivy-mode 1)

;; Markdown mode
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))
