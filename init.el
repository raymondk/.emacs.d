(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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
;;

;; Use command for meta
(setq mac-command-modifier 'meta)

;; Add marmalade packages to list
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)


;; Solarized Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/color-theme-solarized-20120301")
(load-theme 'solarized-dark t)
