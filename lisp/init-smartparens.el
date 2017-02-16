;;; init-smartparens.el

(require-package 'smartparens)
(require 'smartparens)
(require 'smartparens-config)
(add-hook 'after-init-hook 'smartparens-global-strict-mode)


(provide 'init-smartparens)
