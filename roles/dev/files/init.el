(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

;; set load-path
(setq load-path (cons "~/.emacs.d/elisp" load-path))

;; setup color-theme
(load-theme 'manoj-dark t)

;; Stop creating backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Add yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

;; Add MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Add groovy mode
(require 'cl)
(global-font-lock-mode 1)
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("jenkinsfile" . groovy-mode))
