;; Use C-f during file selection to switch to regular find-file
(ido-mode t)
(ido-everywhere t)
(setq ido-use-virtual-buffers t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq-default org-completing-use-ido t)
(setq ido-auto-merge-work-directories-length -1)

(when (maybe-require-package 'ido-ubiquitous)
  (ido-ubiquitous-mode t))

(require-package 'idomenu)

(setq ido-default-buffer-method 'selected-window)

(add-hook 'ido-setup-hook (lambda () (define-key ido-completion-map [up] 'previous-history-element)))

(provide 'init-ido)
