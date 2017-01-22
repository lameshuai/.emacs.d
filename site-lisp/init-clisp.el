;;; init-clisp.el

;; (setq inferior-lisp "/usr/bin/sbcl")	;; debian/ubuntu version
;; (setq inferior-lisp-program "~/.emacs.d/sbcl/sbcl.exe") ;; windows version
(slime-setup)
(slime-setup '(slime-fancy))

(provide 'init-clisp)

