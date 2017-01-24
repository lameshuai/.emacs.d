;;; This file contains my own information
;;; and will display in the scratch

(setq name "Douglas Hall")
(setq mail "oneforalone@gmail.com")


(setq-default initial-scratch-message
	      (concat
	       (concat ";; Happy Hacking, " user-login-name " - Emacs ♥ you!\n")
	       (message ";; Author: %s\n" name)
	       (message ";; Mail: %s\n" mail)
	       (message ";; Date: %s\n\n" (current-time-string))))


(provide 'init-info)
