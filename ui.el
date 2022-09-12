;; UI changes
;;(display-line-numbers-mode 1)

(column-number-mode)

;; Enable line numbers for some modes
(dolist (mode '(text-mode-hook
                prog-mode-hook
                conf-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 1))))

;; Override some modes which derive from the above
(dolist (mode '(org-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(set-fringe-mode 10)
(desktop-save-mode 1)
;;(set-frame-parameter (selected-frame) 'alpha '(90 . 90))
;;  (add-to-list 'default-frame-alist '(alpha . (90 . 90)))
  ;;(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
  ;;(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; font face
(set-frame-font "Fira Mono 22" nil t)
(global-hl-line-mode)
(set-window-scroll-bars (minibuffer-window) nil nil)
(setq ring-bell-function 'ignore)
(setq scroll-conservatively 100)
(setq even-window-sizes nil)
;; change current active window buffer face
(set-face-attribute 'mode-line nil :background "#165D8F")
