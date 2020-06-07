;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(setq custom-file "~/.emacs.d/custom-file.el")
(load custom-file)

(setq inhibit-startup-message t)

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package company
  :ensure t
  :init
  (global-company-mode t)
  :config
  (setq company-idle-delay 0.3)
  :bind (:map company-active-map)
  ("C-n" . company-select-next)
  ("C-p" . company-select-previous))

(use-package highlight-parentheses
  :ensure t
  :init
  (global-highlight-parentheses-mode t))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn-custom t))

(use-package spaceline
  :ensure t
  :init
  (require 'spaceline-config)
  :config
  (spaceline-emacs-theme))

(use-package latex-preview-pane
  :ensure t )

(use-package auctex
   :ensure t
   :defer t )
  
(use-package which-key
  :ensure t )

;; Disable the scroll bar, menu bar and the tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Line number and highlight always ON
(global-hl-line-mode t)
(global-linum-mode t)
(electric-pair-mode t)
(ido-mode t)

;; Current theme in use
;; (load-theme 'zenburn-custom t)


;; company-active-map is not defined prior to company being loaded,
;; with-eval-after-load deals with this problem
;; (with-eval-after-load 'company
;;   (define-key company-active-map (kbd "C-n") 'company-select-next)
;;   (define-key company-active-map (kbd "C-p") 'company-select-previous)
;;   (setq company-idle-delay 0.0)
;;   )

;; (global-company-mode t)

;; (require 'spaceline-config)
;; (spaceline-emacs-theme)
