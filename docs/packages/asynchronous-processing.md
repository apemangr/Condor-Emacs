---
layout: default
title: Asynchronous Processing
parent: Packages
nav_order: 1
---

For doing asynchronous processing in Emacs, it's user the package **async**
```emacs-lisp
(use-package async
  :ensure t
  :init (autoload 'dired-async-mode "dired-async.el" nil t)
  (dired-async-mode 1))
```
