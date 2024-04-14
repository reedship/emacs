

(setq go-ts-mode-indent-offset 4)
(setenv "GOPATH" (concat (getenv "HOME") "/go"))

;; Eglot has no knowledge of GOPATH or Go Modules, so we can use the nearest parent go.mod as the project root.
(require 'project)

(defun project-find-go-module (dir)
  (when-let ((root (locate-dominating-file dir "go.mod")))
    (cons 'go-module root)))

(cl-defmethod project-root ((project (head go-module)))
  (cdr project))

(add-hook 'project-find-functions #'project-find-go-module)

(add-hook 'before-save-hook
    (lambda ()
        (call-interactively 'eglot-code-action-organize-imports))
    nil t)
