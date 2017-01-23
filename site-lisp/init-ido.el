;; Use C-f during file selection to switch to regular find-file
(ido-mode t)
(ido-everywhere t)
(setq ido-use-virtual-buffers t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq-default org-completing-use-ido t)
(setq ido-auto-merge-work-directories-length -1)


(provide 'init-ido)
