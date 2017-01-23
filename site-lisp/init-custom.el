;;; init-custom.el


;;; code enviroment

(set-terminal-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq-default pathname-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))


;;; startup

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


;;; font style
;; (set-frame-font "-outline-Consolas-bold-italic-normal-mono-*-*-*-*-c-*-iso10646-1") ;; windows

(setq x-select-enable-clipboard t)	;; share liunx clipboard

(setq-default initial-scratch-message
              (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n"))


;;; c style

(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "k&r")
	     (c-toggle-auto-state)))



(provide 'init-custom)

