;;; init.el

;;; This file bootstraps the configure-info-directory, which is devided into
;;; a number of other files.

(let ((minver "23.3"))
  (when (version<= emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))


;; plugins location
(add-to-list
 'load-path
 (expand-file-name "site-lisp" user-emacs-directory))

;; pluigns
(require 'init-utils)
(require 'init-elpa)
(require 'init-custom)
(require 'init-theme)
(require 'init-company)
(require 'init-powerline)
(require 'init-smex)
(require 'init-smartparens)
(require 'init-counsel-gtags)
(require 'init-window)
;; (require 'init-clisp)

(provide 'init)
