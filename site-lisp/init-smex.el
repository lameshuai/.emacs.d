;;; init-smex.el

(require-package 'smex)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

(provide 'init-smex)
