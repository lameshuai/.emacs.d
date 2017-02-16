
;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.

(let ((minver "23.3"))
  (when (version<= emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Temporarily reduce garbage collection during startup
;;----------------------------------------------------------------------------
(defconst sanityinc/initial-gc-cons-threshold gc-cons-threshold
  "Initial value of `gc-cons-threshold' at start-up time.")
(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold sanityinc/initial-gc-cons-threshold)))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; (require 'init-compat)
(require 'init-utils)    ;;Must come before elpa, as it may provide package.el
;; Calls (package-initialize)
(require 'init-elpa)      ;; Machinery for installing required packages
(require 'init-exec-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-preload-local.el"
;;----------------------------------------------------------------------------
;; (require 'init-preload-local nil t)

;;----------------------------------------------------------------------------
;; Load configs for specific features 
;;----------------------------------------------------------------------------

(require-package 'diminish)


(require 'init-frame-hooks)
(require 'init-theme)
(require 'init-gui-frames)

(require 'init-company)
(require 'init-ido)
(require 'init-smex)
(require 'init-smartparens)
(require 'init-window)
(require 'init-dired)

(require 'init-editing-utils)
(require 'init-paredit)
(require 'init-powerline)
(require 'init-fonts)

;;----------------------------------------------------------------------------
;; Load configs for specific modes
;;----------------------------------------------------------------------------

(require 'init-org)
(require 'init-counsel-gtags)
(require 'init-python)
(require 'init-lisp)
(require 'init-slime)
(require 'init-clisp)
(require 'init-matlab)
(require 'init-sql)
(require 'init-php)
(require 'init-html)
(require 'init-css)




;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(require 'server)
(unless (server-running-p)
  (server-start))


;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(when (file-exists-p custom-file)
  (load custom-file))


;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
;; (require 'init-local nil t)



;;============================================================================

;; My own informations display when startup
(require 'init-info)

;;============================================================================


(provide 'init)


;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
