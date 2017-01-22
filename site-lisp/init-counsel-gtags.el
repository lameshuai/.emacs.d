;;; init-counsel-gtags.el

(require-package 'counsel-gtags)
(require 'counsel-gtags)


;; sample configuration
(add-hook 'c-mode-hook 'counsel-gtags-mode)
(add-hook 'c++-mode-hook 'counsel-gtags-mode)

(with-eval-after-load 'counsel-gtags
  (define-key counsel-gtags-mode-map (kbd "M-t") 'counsel-gtags-find-definition)
  (define-key counsel-gtags-mode-map (kbd "M-r") 'counsel-gtags-find-reference)
  (define-key counsel-gtags-mode-map (kbd "M-s") 'counsel-gtags-find-sysmbol)
  (define-key counsel-gtags-mode-map (kbd "M-,") 'counsel-gtags-pop-stack))


(provide 'init-counsel-gtags)

