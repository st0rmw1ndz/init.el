(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

(unless (package-installed-p 'gruvbox-theme)
  (package-install 'gruvbox-theme))

(load-theme 'gruvbox-dark-medium)

(set-face-attribute 'default nil
  :font "Fira Mono"
  :height 100
  :weight 'medium)

(set-face-attribute 'font-lock-comment-face nil
  :slant 'italic)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)
(global-visual-line-mode t)

;; Disable custom.el
(setq custom-file null-device)
