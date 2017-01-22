;;; init.el

;; plugins location
(add-to-list
 'load-path
 (expand-file-name "site-lisp" user-emacs-directory))

;; pluigns
(require 'init-utils)
(require 'init-elpa)
(require 'init-custom)
(require 'init-color-theme)
(require 'init-company)
(require 'init-powerline)
(require 'init-smex)
(require 'init-smartparens)
(require 'init-counsel-gtags)
(require 'init-window-numbering)
;; (require 'init-clisp)

(provide 'init)
