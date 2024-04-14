(setq global-flymake-mode +1)

(use-package sideline-flymake
  :hook (flymake-mode . sideline-mode)
  :init
  (setq sideline-flymake-display-mode 'line)
  (setq sideline-backends-right '(sideline-flymake)))
