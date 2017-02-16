;;; init-yasnippet.el

(when (maybe-require-package 'yasnippet)
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
                (yas-minor-mode t)
                (yas-reload-all))))
  (after-load 'yasnippet
    (diminish 'yas-minor-mode "YAS")
    (setq yas-snippet-dirs "~/.emacs.d/yasnippets")
    (define-key yas-minor-mode-map (kbd "<tab>") nil)
    (define-key yas-minor-mode-map (kbd "TAB") nil)
    (define-key yas-minor-mode-map (kbd "C-x y") 'yas-expand)))

(provide 'init-yasnippet)


