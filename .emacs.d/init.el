(package-initialize)

;;startup preferences
(load-theme 'xresources t)
(setq inhibit-startup-message t)
(setq default-directory "~/dev/yugen")
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;;editor preferences
(setq ring-bell-function 'ignore
      x-gtk-use-system-tooltips nil
      use-dialog-boxes nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq gnutls-verify-error t)
(setq tls-checktrust t)

(set-default-font "xos4 Terminus")

;;add melpa
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;;set c++ mode (indentation, etc)
(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)
(defun my-c++-mode-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'substatement-open 0))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
;;use c++ mode with header files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("301410f3f87ca43deee58f89556e1d5b1ee920de51f52013d6a008717cde52bb" "2b3f1e6abe0f02ff73d95dca04901bdbc2ecebe80fa453eded34fa39c8b050cb" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; avoid backup-junk files generation
(setq create-lockfiles nil)
