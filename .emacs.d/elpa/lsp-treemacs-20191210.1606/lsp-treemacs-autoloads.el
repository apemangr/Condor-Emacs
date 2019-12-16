;;; lsp-treemacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "lsp-metals-treeview" "lsp-metals-treeview.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-metals-treeview.el

(autoload 'lsp-metals-treeview-enable "lsp-metals-treeview" "\
Enable Metals treeview extension - send capability
to Metals to indicate we want treeview messages and wire up notification
handlers.

\(fn ENABLE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-metals-treeview" '("lsp-metals-tree")))

;;;***

;;;### (autoloads nil "lsp-treemacs" "lsp-treemacs.el" (0 0 0 0))
;;; Generated autoloads from lsp-treemacs.el

(autoload 'lsp-treemacs-errors-list "lsp-treemacs" "\
Display error list.

\(fn)" t nil)

(autoload 'lsp-treemacs-symbols "lsp-treemacs" "\
Show symbols view.

\(fn)" t nil)

(autoload 'lsp-treemacs-java-deps-list "lsp-treemacs" "\
Display error list.

\(fn)" t nil)

(autoload 'lsp-treemacs-java-deps-follow "lsp-treemacs" "\


\(fn)" t nil)

(defvar lsp-treemacs-sync-mode nil "\
Non-nil if Lsp-Treemacs-Sync mode is enabled.
See the `lsp-treemacs-sync-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `lsp-treemacs-sync-mode'.")

(custom-autoload 'lsp-treemacs-sync-mode "lsp-treemacs" nil)

(autoload 'lsp-treemacs-sync-mode "lsp-treemacs" "\
Global minor mode for synchronizing lsp-mode workspace folders and treemacs projects.

\(fn &optional ARG)" t nil)

(autoload 'lsp-treemacs-references "lsp-treemacs" "\


\(fn ARG)" t nil)

(autoload 'lsp-treemacs-implementations "lsp-treemacs" "\


\(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-treemacs" '("lsp-treemacs-")))

;;;***

;;;### (autoloads nil nil ("lsp-treemacs-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lsp-treemacs-autoloads.el ends here
