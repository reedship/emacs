(unless (package-installed-p 'modus-themes)
  (package-install 'modus-themes))
(unless (package-installed-p 'doom-themes)
  (package-install 'doom-themes))
;;Modus Theme
(require 'modus-themes)

;; Add all your customizations prior to loading the themes
;; (setq modus-themes-italic-constructs nil
;;       modus-themes-bold-constructs nil
;;       modus-themes-region '(accented)
;;       modus-themes-hl-line '(accented)
;;       modus-themes-mixed-fonts t
;;       )
(load-theme 'doom-homage-white t)
