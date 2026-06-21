(setq custom-file "~/.emacs.custom.el")
(load custom-file t)

(add-to-list 'package-archives
	     '("melpa"."https://melpa.org/packages/") t)
(package-initialize)

;;ui settings
(menu-bar-mode 0)
(tool-bar-mode 0)
(global-display-line-numbers-mode)
(electric-pair-mode 1)
(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 140)
