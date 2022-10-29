;;Modus Theme
(require 'modus-themes)

;; Add all your customizations prior to loading the themes
 (setq modus-themes-italic-constructs nil
       modus-themes-bold-constructs nil
       modus-themes-region '(accented)
       modus-themes-hl-line '(accented)
       modus-themes-mixed-fonts t
       )

;; Load the theme files before enabling a theme
(modus-themes-load-themes)


;; TODO
;; Load the theme of your choice:
(modus-themes-load-vivendi) ;; OR (modus-themes-load-operandi)
;;(load-theme 'ef-duo-light)
(define-key global-map (kbd "<f5>") #'modus-themes-toggle)
