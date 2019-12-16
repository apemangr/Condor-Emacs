(package-initialize)

(custom-set-variables
 '(cua-mode t nil (cua-base))
 '(frame-resize-pixelwise t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages (quote (use-package doom-modeline doom-themes))))
(custom-set-faces
 '(default ((t (:family "SF Mono" :foundry "APPL" :slant normal :weight normal :height 110 :width normal)))))

(use-package async
  :ensure t
  :init (autoload 'dired-async-mode "dired-async.el" nil t)
  (dired-async-mode 1))

(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-one t)
  (doom-themes-treemacs-config))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

(use-package helm
:ensure t
:init
(helm-mode 1)
:bind
  ("C-x C-f" . 'helm-find-files)
  ("C-x C-b" . 'helm-buffers-list)
  ("M-x" . 'helm-M-x))
(helm-autoresize-mode 1)

(use-package helm-lsp
  :ensure t
  :commands helm-lsp-workspace-symbol)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 2))
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'yas-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'company-mode)
(add-hook 'after-init-hook 'global-company-mode)

(use-package company-lsp
  :ensure t
  :commands company-lsp)

(use-package yasnippet
  :ensure t
  :config
  (yas-reload-all))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(use-package quickrun
  :ensure t
  :bind("<f5>". 'quickrun-shell))

(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs                 (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay      0.5
          treemacs-display-in-side-window        t
          treemacs-eldoc-display                 t
          treemacs-file-event-delay              5000
          treemacs-file-extension-regex          treemacs-last-period-regex-value
          treemacs-file-follow-delay             0.2
          treemacs-follow-after-init             t
          treemacs-git-command-pipe              ""
          treemacs-goto-tag-strategy             'refetch-index
          treemacs-indentation                   2
          treemacs-indentation-string            " "
          treemacs-is-never-other-window         nil
          treemacs-max-git-entries               5000
          treemacs-missing-project-action        'ask
          treemacs-no-png-images                 nil
          treemacs-no-delete-other-windows       t
          treemacs-project-follow-cleanup        nil
          treemacs-persist-file                  (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                      'left
          treemacs-recenter-distance             0.1
          treemacs-recenter-after-file-follow    nil
          treemacs-recenter-after-tag-follow     nil
          treemacs-recenter-after-project-jump   'always
          treemacs-recenter-after-project-expand 'on-distance
          treemacs-show-cursor                   nil
          treemacs-show-hidden-files             t
          treemacs-silent-filewatch              nil
          treemacs-silent-refresh                nil
          treemacs-sorting                       'alphabetic-asc
          treemacs-space-between-root-nodes      t
          treemacs-tag-follow-cleanup            t
          treemacs-tag-follow-delay              1.5
          treemacs-width                         26)
	  
    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)
    (pcase (cons (not (null (executable-find "git")))
                 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag)))

(electric-pair-mode 1)
(setq electric-pair-pairs
'(
  (?\" . ?\")
  (?\' . ?\')
  (?\{ . ?\})))

(defun move-line (n)
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    (forward-line -1)
    (forward-char col)))
(defun move-line-up (n)
  (interactive "p")
  (move-line (if (null n) -1 (- n))))
(defun move-line-down (n)
  (interactive "p")
  (move-line (if (null n) 1 n)))
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)

(show-paren-mode 1)

(global-set-key (kbd "C-h") 'kill-whole-line)

(add-hook 'prog-mode-hook 'linum-mode)

(use-package all-the-icons
  :ensure t)

(use-package lsp-mode
  :commands lsp
  :ensure t)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents  . 5)
			  (bookmarks . 5)))
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-startup-banner "~/.emacs.d/CondorEmacs.png")
  (setq dashboard-banner-logo-title "Welcome to Condor Emacs!")
  (setq dashboard-set-navigator t)
  (setq dashboard-navigator-buttons
	`(((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
	    "Homepage"
	    "Browse homepage"
	    (lambda (&rest _) (browse-url "https://github.com/apemangr/Condor-Emacs/")))

	   (,(all-the-icons-faicon "archive" :height 1.1 :v-adjust 0.0)
	    "Update Packages"
	    "Click to updates your packages"
	    (lambda (&rest _) (auto-package-update-now)))

	   (,(all-the-icons-octicon "gear" :height 1.1 :v-adjust 0.0)
	    "Configuration"
	    "Click to config Condor Emacs"
	    (lambda (&rest _) (find-file "~/.emacs.d/config.org")))))))

(use-package centaur-tabs
  :demand
  :hook 
  (treemacs-mode . centaur-tabs-local-mode)
  (dashboard-mode . centaur-tabs-local-mode)
  :config
  (centaur-tabs-mode t)
  (setq centaur-tabs-gray-out-icons 'buffer)
  (setq centaur-tabs-set-bar 'left) 
  (setq centaur-tabs-height 36)
  (setq centaur-tabs-set-icons t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))
