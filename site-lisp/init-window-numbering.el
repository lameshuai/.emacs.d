;;; init-window-numbering.el

(require-package 'window-numbering)
(require 'window-numbering)

;; Enable window-numbering-mode and use M-1 through M-0 to navigate
(setq window-numbering-assing-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))


(provide 'init-window-numbering)

