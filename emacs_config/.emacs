(package-initialize)
(setq custom-file "~/.emacs.custom.el")
(load custom-file t)

;;load rc.el
(load-file "~/.emacs.rc/rc.el")


(add-to-list 'package-archives
	     '("melpa"."https://melpa.org/packages/") t)
(package-initialize)

;;ui settings
(menu-bar-mode 0)
(tool-bar-mode 0)
(global-display-line-numbers-mode)
(electric-pair-mode 1)
;; plz download the font in the system
(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 140)

;; auto download using rc
(rc/require-theme 'gruber-darker)

;;load simpc for c, h, cpp
(add-to-list 'load-path "~/.emacs.local/")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))


;;ido 
(ido-mode 1)
(ido-everywhere 1)


;;; multiple cursors
(rc/require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)
