;;; init-custom.el

(ido-mode t)
(tool-bar-mode -1)
(show-paren-mode t)
(scroll-bar-mode -1)
(global-linum-mode t)
(column-number-mode t)
(global-hl-line-mode 1)
(size-indication-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(mouse-avoidance-mode 'animate)

(setq default-directory "~/")
(setq require-final-newline t)
(setq frame-title-format "%f")
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq enable-recursive-minibuffers t)
(setq backup-directory-alist (quote (("." . "~/.backups"))))

;; font style
;; (set-frame-font "-outline-Consolas-bold-italic-normal-mono-*-*-*-*-c-*-iso10646-1") ;; windows


;; c style

(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "k&r")
	     (c-toggle-auto-state)))

(provide 'init-custom)

