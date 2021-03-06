;;; package --- Summary 
;;;
;;;
;;; Commentary:
;;; Code:
;;;
;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(virtualenv-root "~/.virtualenv.d/")
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;
;; Packages installed:
;; - magit
;; - color-theme-solarized
;; - auto-complete
;; - linum
;; - jedi
;; - virtualenv
;; - flycgecj
;;

;; Use command for meta
(when window-system
  (setq mac-command-modifier 'meta))

;; Add marmalade packages to list
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Solarized Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/color-theme-solarized-20120301")
(load-theme 'solarized-dark t)

;;Enable ido
(require 'ido)
(ido-mode t)

;;Enable linum to show line numbers
(require 'linum)
(global-linum-mode 1)

;; jedi
(add-to-list 'load-path "~/.emacs.d/emacs-jedi/")
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;(add-to-list 'load-path "~/.emacs.d/autopair/")
;;(require 'autopair)
;;(autopair-global-mode) ;; to enable in all buffers

;; Unique names when buffers have the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; Save session
(setq desktop-save 'if-exists)
(desktop-save-mode 1)

;;; init.el ends here
