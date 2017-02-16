;;; init-counsel-gtags.el

(when (maybe-require-package 'counsel-gtags)
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode)
                (counsel-gtags-mode 1))))
  (after-load 'counsel-gtags
    (diminish 'counsel-gtags-mode "CG")
    (define-key counsel-gtags-mode-map (kbd "M-t") 'counsel-gtags-find-definition)
    (define-key counsel-gtags-mode-map (kbd "M-R") 'counsel-gtags-find-reference)
    (define-key counsel-gtags-mode-map (kbd "M-s") 'counsel-gtags-find-sysmbol)
    (define-key counsel-gtags-mode-map (kbd "M-,") 'counsel-gtags-pop-stack)))


(provide 'init-counsel-gtags)

