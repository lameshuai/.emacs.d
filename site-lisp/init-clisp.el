;;; init-clisp.el

(add-to-list 'load-path "~/.emacs.d/slime/")

;; ;; debian/ubuntu version
;; (setq inferior-lisp-program "/usr/bin/sbcl")
;; (setq slime-contribs '(slime-fancy))

;; ;; windows version
;; (setq inferior-lisp-program "~/.emacs.d/sbcl/sbcl.exe")
;; (slime-setup)
;; (slime-setup '(slime-fancy))

(require 'slime)
(require 'slime-autoloads)


(provide 'init-clisp)

