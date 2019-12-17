---
layout: default
title: async
parent: Packages
nav_order: 1
---

For doing asynchronous processing in Emacs, it's used the package **async**, this is the configuration present in the config file.

```emacs-lisp
(use-package async
  :ensure t
  :init (autoload 'dired-async-mode "dired-async.el" nil t)
        (dired-async-mode 1))
```
For more information about this package, please visit [async](https://github.com/jwiegley/emacs-async).
