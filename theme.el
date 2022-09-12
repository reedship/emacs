;;Modus Theme
(require 'modus-themes)

;; Add all your customizations prior to loading the themes
(setq modus-themes-italic-constructs t
      modus-themes-bold-constructs nil
      modus-themes-region '(bg-only no-extend)
      modus-themes-subtle-line-numbers t
      modus-themes-fringes 'subtle
      )

;; Load the theme files before enabling a theme
(modus-themes-load-themes)

;; Load the theme of your choice:
(modus-themes-load-vivendi) ;; OR (modus-themes-load-vivendi)

;;(define-key global-map (kbd "<f5>") #'modus-themes-toggle)
