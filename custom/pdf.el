  (use-package pdf-tools
   :ensure t
   :config
   (setenv "PKG_CONFIG_PATH" "/usr/local/Cellar/pkg-config/0.29.2_3")
   (pdf-tools-install)
   (custom-set-variables
    '(pdf-tools-handle-upgrades t)))
