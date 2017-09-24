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

;; -- functions
(defun neotree-project-dir-toggle ()
  (interactive)
  (let ((project-dir
         (ignore-errors
           (projectile-project-root)))
        (file-name (buffer-file-name))
        (neo-smart-open t))
    (if (and (fboundp 'neo-global--window-exists-p)
             (neo-global--window-exists-p))
        (neotree-hide)
      (progn
        (neotree-show)
        (if project-dir
            (neotree-dir project-dir))
        (if file-name
            (neotree-find file-name))))))
;; ---------------------

;; core
(server-start)

;; editor
(tooltip-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode 1)
(scroll-bar-mode -1)
(blink-cursor-mode 0)

(set-face-attribute 'default t :font "Source Code Pro")
(add-to-list 'default-frame-alist '(font . "Source Code Pro"))

(setq inhibit-startup-screen t)
(setq fast-but-imprecise-scrolling t)
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

(setq-default indent-tabs-mode nil)

;; -- ui-uplifts
(use-package all-the-icons
  :ensure t)

(use-package doom-themes
  :ensure t
  :init
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t
        doom-neotree-project-size 1.05)
  :config
  (load-theme 'doom-vibrant t)
  (doom-themes-org-config)
  (doom-themes-neotree-config)
  (doom-themes-visual-bell-config))

(use-package neotree
  :ensure t
  :init
  (setq neo-smart-open t
        neo-show-hidden-files t))

(use-package spaceline
  :ensure t)

(use-package spaceline-all-the-icons
  :ensure t
  :config
  (spaceline-all-the-icons-theme))

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode t))
  
;; -- frames/windows/buffers management
(use-package eyebrowse
  :ensure t
  :init
  (setq eyebrowse-new-workspace t
        eyebrowse-keymap-prefix (kbd "C-w C-e"))
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

(use-package multi-term
  :ensure t
  :init
  (setq multi-term-program "/usr/local/bin/fish"))

(use-package ws-butler
  :ensure t
  :config
  (ws-butler-global-mode t))

;; -- extensions
(use-package projectile
  :ensure t
  :init
  (setq projectile-completion-system 'ivy)
  :config
  (projectile-mode t))

(use-package ivy
  :ensure t
  :config
  (ivy-mode t))

(use-package magit
  :ensure t)

;; -- bindings
(global-set-key [f1] 'neotree-project-dir-toggle)

(use-package general
  :ensure t
  :init
  (setq leader "SPC")
  :config
  (general-define-key :states '(normal)
                      "C-u" 'evil-scroll-up)

  (general-define-key :states '(normal)
                     :prefix leader
                     "o" 'projectile-find-file
                     "gs" 'magit-status)

  (general-define-key :states '(normal)
                      :keymaps 'neotree-mode-map
                      "c" 'neotree-create-node
                      "d" 'neotree-delete-node
                      "q" 'neotree-hide
                      "r" 'neotree-rename-node
                      "s" 'neotree-enter-horizontal-split
                      "v" 'neotree-enter-vertical-split
                      "u" 'neotree-select-up-node
                      "C" 'neotree-change-root
                      "R" 'neotree-refresh
                      "RET" 'neotree-enter))
