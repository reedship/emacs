;; Load Custom init files
(load "~/.emacs.d/custom/package.el")
(load "~/.emacs.d/custom/bufler.el")
(load "~/.emacs.d/custom/startup.el")
(load "~/.emacs.d/custom/magit-init.el")
(load "~/.emacs.d/custom/projectile-init.el")

(load "~/.emacs.d/custom/general.el")
(load "~/.emacs.d/custom/commands.el")
(load "~/.emacs.d/custom/ui.el")
(load "~/.emacs.d/custom/fira.el")
(load "~/.emacs.d/custom/theme.el")
(load "~/.emacs.d/custom/dashboard.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline success warning error])
 '(ansi-color-names-vector
   ["gray35" "#a60000" "#005e00" "#813e00" "#0031a9" "#721045" "#00538b" "gray65"])
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#323232")
 '(chart-face-color-list
   '("#b52c2c" "#4fd100" "#f1e00a" "#2fafef" "#bf94fe" "#47dfea" "#702020" "#007800" "#b08600" "#1f2f8f" "#5f509f" "#00808f"))
 '(custom-safe-themes
   '("0657bbbdf081bafc0b56d4d40cb333829eb576c8c519c8028f29afbf9559eb35" "b8fe3d5d369cef3730db2b28af550f99311351f8a889d2c210565c572952fa5c" "9ae0e81ced7c8d587cb1db9fcb528856315d352822082518884e8726fe681d1d" "9b7d703afa15e320af9aa6b3e02bb1ebb8657c23043f7054357f86ce014b5461" "83fc7ca4d73cee934d2a96d5f2f6fe243afede055497528ab89dbb92c1145020" "cb8b94bca7576a8552734086b32dc1a963b91c4c8b8dac95f335f5ce7e6f9dae" "130b47ad4ea2bc61b79e13ecb4a6e6b30351de0fea02e757f074477aa744128b" "0d23ecaa8eb7cc7b6c303c484677a6cbb85a7847e1840b1c5cd6b9477f11df9e" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c83615b3176138c1b6c646b2df6c87e0bfb497fdc8486a9b280beee9628d9299" "a701a8612a0105b657a3fc6d686a1afa43f6c26f9339cadc6a26570099f69f26" "42850fc05cf02fc37c45164a8d7006c762d3ebcd43409efe2c4456a8b89bdf47" "9f97708991e9b0ddc2d428e5bae87d97d8b6c6c09ef82cbfa26a797560de7cec" "d7847e695e0a71f78536cac29f3971aecc794c626784660935267d4a2aabb187" "a65afd4b86b70574c1253b0239be246e8240f26007e20513d199dae1e76916d8" "671bf7cd1ba52017fb369a66dee4a66ae932c4c8264f51199d244a6ff12001c0" "9e2e4db695753d4846b84e3eb15aab79a04404852801f07f66b080a5d2b6e00f" "6abef8c5e70ae252c41e9c91a885635de66816204a0bd9102387f6f7c419a7a5" "1240ba17198f53cac7d4c9c27267f8d497a745e5db5f10233b47ddb820fd271b" "e87f48ec4aebdca07bb865b90088eb28ae4b286ee8473aadb39213d361d0c45f" "046e442b73846ae114d575a51be9edb081a1ef29c05ae5e237d5769ecfd70c2e" "3d2e532b010eeb2f5e09c79f0b3a277bfc268ca91a59cdda7ffd056b868a03bc" default))
 '(exwm-floating-border-color "#646464")
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-themes-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-themes-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-themes-fringe-yellow))
 '(highlight-changes-colors nil)
 '(highlight-changes-face-list '(success warning error bold bold-italic))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#c0c530")
     ("TODO" . "#feacd0")
     ("NEXT" . "#b6a0ff")
     ("THEM" . "#f78fe7")
     ("PROG" . "#00d3d0")
     ("OKAY" . "#4ae2f0")
     ("DONT" . "#70b900")
     ("FAIL" . "#ff8059")
     ("BUG" . "#ff8059")
     ("DONE" . "#44bc44")
     ("NOTE" . "#d3b55f")
     ("KLUDGE" . "#d0bc00")
     ("HACK" . "#d0bc00")
     ("TEMP" . "#ffcccc")
     ("FIXME" . "#ff9077")
     ("XXX+" . "#ef8b50")
     ("REVIEW" . "#6ae4b9")
     ("DEPRECATED" . "#bfd9ff")) t)
 '(ibuffer-deletion-face 'modus-themes-mark-del)
 '(ibuffer-filter-group-name-face 'modus-themes-pseudo-header)
 '(ibuffer-marked-face 'modus-themes-mark-sel)
 '(ibuffer-title-face 'default)
 '(ispell-dictionary nil)
 '(mini-modeline-face-attr '(:background unspecified))
 '(org-src-block-faces 'nil)
 '(package-selected-packages
   '(multiple-cursors which-key all-the-icons page-break-lines hl-todo org-bullets visual-fill-column command-log-mode dashboard markdown-preview-mode creamsody-theme fira-code-mode vterm zzz-to-char docker markdown-mode web-mode helm-rails projectile-rails yaml-mode exec-path-from-shell org-plus-contrib counsel modus-themes ef-themes windresize cl-libify ctable bufler dired-ranger dired-single all-the-icons-dired dired-collapse dired-rainbow default-text-scale diminish ws-butler tree-sitter company magit ivy projectile gruber-darker-theme ag use-package))
 '(pdf-view-midnight-colors '("#ffffff" . "#100f10"))
 '(pos-tip-background-color "#1A3734")
 '(pos-tip-foreground-color "#FFFFC8")
 '(widget-link-prefix "[")
 '(widget-link-suffix "]")
 '(widget-mouse-face '(highlight widget-button))
 '(widget-push-button-prefix "[")
 '(widget-push-button-suffix "]")
 '(xterm-color-names
   ["black" "#ff8059" "#44bc44" "#d0bc00" "#2fafff" "#feacd0" "#00d3d0" "gray65"])
 '(xterm-color-names-bright
   ["gray35" "#ef8b50" "#70b900" "#c0c530" "#79a8ff" "#f78fe7" "#4ae2f0" "white"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "CTDB" :family "Fira Code")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
