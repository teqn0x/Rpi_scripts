(message "--- Loading .emacs ---")
;;Adding the load-paths
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'maxframe)
(load-file "/user/mreitsma/.emacs.d/lisp/xclip.el")

;; No anoying startup messages, screens, tips, etc
(setq inhibit-startup-screen 1)
(setq inhibit-startup-message 1)
(setq tooltip-mode nil)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq visible-bell t)
(defalias 'yes-or-no-p 'y-or-n-p)
;;(toggle-full-screen) does not work

;; Line and Column numbers
(setq line-number-mode 1)
(setq column-number-mode 1)

;;scroll bar to the right
;;(setq scroll-bar-mode 'right)

;; Some tools that make it easier
(show-paren-mode 1)
(setq-default transient-mark-mode 1)
(global-font-lock-mode 1)


;; Use a clipboard while copy/pasting:
(setq x-select-enable-clipboard 1)

;; Don't add new lines when scrolling down
(setq next-line-add-newline nil)

;; Some keystrokes:
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-x r z") 'string-insert-rectangle)
(global-set-key (kbd "M-s r") 'replace-string)

;; Adjusting the autosave / backup behaviour of emacs. Get rid of those nasty lalala~ and #lalala# files.
(setq auto-save-default nil)
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.emacs_backups/"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-version 2
 version-control t)




 
