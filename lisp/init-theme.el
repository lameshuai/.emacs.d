;;; init-color-theme.el

(require-package 'color-theme)
(require 'color-theme)
(color-theme-initialize)

;; If you don't customize it, this is the theme you get
(color-theme-classic)

;; Ensure that themes will be applied even if they have not been customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook 'reapply-themes) 


;;------------------------------------------------------------------------------
;; Toggle between light and dark
;;------------------------------------------------------------------------------

(defun classic ()
  "Activate a classic color theme"
  (interactive)
  (color-theme-classic))

(defun xemacs ()
  "Activate xemacs color theme"
  (interactive)
  (color-theme-xemacs))

(defun simple ()
  "Activate a simple color theme"
  (interactive)
  (color-theme-simple-1))

(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (color-theme-dark-laptop))

(defun matrix ()
  "Activate a matrix color theme."
  (interactive)
  (color-theme-matrix))

(provide 'init-theme)
