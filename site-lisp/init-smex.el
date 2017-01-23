;;; init-smex.el

(require-package 'smex)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(setq-default smex-save-file (expand-file-name ".smex-items" user-emacs-directory))

(provide 'init-smex)
