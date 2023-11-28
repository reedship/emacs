(unless (package-installed-p 'projectile)
  (package-install 'projectile))
;; Configure shell to pull pash from ~/.zshrc
(when (memq window-system '(mac ns x))
  (setq image-types (cons 'svg image-types))
  (setq dired-use-ls-dired nil)
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

;; smex
;;(require 'smex)
;;(global-set-key (kbd "M-x") 'smex)

;; savehist
(savehist-mode)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))
(setq savehist-file "~/.emacs.d/tmp/savehist")
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves/"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

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
;;(ivy-mode 1)

;; vertico
(use-package vertico
  :ensure t
  :init
  (vertico-mode))
;; windows specific settings
(if (eq 'system-type "windows-nt")
    (setq default-directory "C:\\Users\\reed\\")
  )
(defun no-junk-please-were-unixish ()
  (let ((coding-str (symbol-name buffer-file-coding-system)))
    (when (string-match "-\\(?:dos\\|mac\\)$" coding-str)
      (set-buffer-file-coding-system 'unix))))

(add-hook 'find-file-hooks 'no-junk-please-were-unixish)
;; which-key

;; make sure which-key doesn't show normally but refreshes quickly after it is
;; triggered.
(require 'which-key)
(which-key-mode)

;; Markdown mode
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))
;; desktop save mode
(desktop-save-mode 0)
(setq make-backup-files nil)
;;(global-fira-code-mode)

(setq hl-todo-keyword-faces '(("TODO" . "#00008B")
                              ("HACK" . "#ffff00")
                              ("XXX" . "#00ffff")
                              ("NOTE" . "#ff00ff")))
