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
