;; straight.el bootstrap
(let ((bootstrap-file (concat user-emacs-directory "straight/bootstrap.el"))
      (bootstrap-version 2))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
;; ---------------------

;; use-package bootstrap
(straight-use-package 'use-package)
;; ---------------------

;; core
(server-start)

;; editor
(add-to-list 'default-frame-alist '(font . "Source Code Pro" ))
(set-face-attribute 'default t :font "Source Code Pro" )

(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode 1)
(scroll-bar-mode -1)
(blink-cursor-mode 0)

(setq inhibit-startup-screen t)
(setq fast-but-imprecise-scrolling t)
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

(setq-default indent-tabs-mode nil)

;; -- ui-uplifts 
(use-package doom-themes
  :ensure t
  :init
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  :config
  (load-theme 'doom-one t)
  (doom-themes-visual-bell-config)
  (doom-themes-neotree-config)
  (doom-themes-org-config))

(use-package diminish
  :ensure t)

(use-package neotree
  :ensure t
  :init
  (setq neo-theme 'nerd))
  

;; -- frames/windows/buffers management
(use-package eyebrowse
  :ensure t
  :init
  (setq eyebrowse-new-workspace t)
  :config
  (eyebrowse-mode t))

;; -- editor
(use-package evil
  :ensure t
  :init
  (setq evil-cross-lines t
        evil-move-beyond-eol t
        evil-move-cursor-back nil
        evil-insert-state-cursor '(bar "White")
        evil-visual-state-cursor '(box "#F86155"))
  (progn
    (use-package evil-surround
      :ensure t
      :config
      (global-evil-surround-mode t))
    (use-package evil-commentary
      :ensure t
      :config
      (evil-commentary-mode)))
  :config
  (evil-mode t))

;; multi-term
(use-package multi-term
  :ensure t
  :init
  (setq multi-term-program "/usr/local/bin/fish"))

;; -- extensions
(use-package projectile
  :ensure t
  :config
  (projectile-mode t))

(use-package helm
  :ensure t
  :init
  (progn
    (use-package helm-projectile
      :ensure t
      :config
      (helm-projectile-on)))
  :config
  (helm-mode t))
  

;; -- bindings
;; general.el

