;;; init.el

;;; This file bootstraps the configure-info-directory, which is devided into
;;; a number of other files.


;; plugins location
(add-to-list
 'load-path
 (expand-file-name "site-lisp" user-emacs-directory))

;; pluigns
(require 'init-utils)
(require 'init-elpa)
(require 'init-custom)
(require 'init-company)
(require 'init-ido)
(require 'init-smex)
(require 'init-smartparens)
(require 'init-counsel-gtags)
(require 'init-theme)
(require 'init-powerline)
(require 'init-window)
(require 'init-clisp)

(provide 'init)
