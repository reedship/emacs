;; Load Custom init files
(load "~/.emacs.d/package.el")
(load "~/.emacs.d/bufler.el")
(load "~/.emacs.d/startup.el")
(load "~/.emacs.d/theme.el")
(load "~/.emacs.d/magit-init.el")
(load "~/.emacs.d/projectile-init.el")
(load "~/.emacs.d/general.el")
(load "~/.emacs.d/custom-commands.el")
(load "~/.emacs.d/ui.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-vivendi))
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c83615b3176138c1b6c646b2df6c87e0bfb497fdc8486a9b280beee9628d9299" "a701a8612a0105b657a3fc6d686a1afa43f6c26f9339cadc6a26570099f69f26" "42850fc05cf02fc37c45164a8d7006c762d3ebcd43409efe2c4456a8b89bdf47" "9f97708991e9b0ddc2d428e5bae87d97d8b6c6c09ef82cbfa26a797560de7cec" "d7847e695e0a71f78536cac29f3971aecc794c626784660935267d4a2aabb187" "a65afd4b86b70574c1253b0239be246e8240f26007e20513d199dae1e76916d8" "671bf7cd1ba52017fb369a66dee4a66ae932c4c8264f51199d244a6ff12001c0" "9e2e4db695753d4846b84e3eb15aab79a04404852801f07f66b080a5d2b6e00f" "6abef8c5e70ae252c41e9c91a885635de66816204a0bd9102387f6f7c419a7a5" "1240ba17198f53cac7d4c9c27267f8d497a745e5db5f10233b47ddb820fd271b" "e87f48ec4aebdca07bb865b90088eb28ae4b286ee8473aadb39213d361d0c45f" "046e442b73846ae114d575a51be9edb081a1ef29c05ae5e237d5769ecfd70c2e" "3d2e532b010eeb2f5e09c79f0b3a277bfc268ca91a59cdda7ffd056b868a03bc" default))
 '(package-selected-packages
   '(vterm zzz-to-char docker markdown-mode web-mode helm-rails projectile-rails yaml-mode exec-path-from-shell org-plus-contrib counsel modus-themes ef-themes windresize cl-libify ctable bufler dired-ranger dired-single all-the-icons-dired dired-collapse dired-rainbow default-text-scale diminish ws-butler tree-sitter company magit ivy projectile gruber-darker-theme ag use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "#165D8F" :foreground "#f4f4f4" :box (:line-width (1 . 1) :color "#a8a8a8")))))
 '(mode-line-inactive ((t (:inherit modus-themes-ui-variable-pitch :background "#1e1e1e" :foreground "#bfc0c4" :box (:line-width (1 . 1) :color "#3c3c3c"))))))
