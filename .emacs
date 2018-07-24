(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

(add-to-list 'load-path "/home/god/Downloads/better-defaults")
(add-to-list 'load-path "/home/god/Downloads/sunrise-commander")
(add-to-list 'load-path "/home/god/Downloads/emacs-application-framework")
(package-initialize)

(require 'better-defaults)
(require 'sunrise-commander)
(require 'org)
(require 'evil)
;; (require 'eaf)

(setq inhibit-splash-screen t)
(setq frame-background-mode 'dark)
(setq org-log-done t)
(setq org-agenda-files (list "~/org/TODO.org"
                             "~/org/SCHOOL.org"))
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "vivaldi")
;; (evil-mode 1)
(setq-default tab-width 4)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)



;; Fix tabs
(defun my-insert-tab-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t"))

(global-set-key (kbd "TAB") 'my-insert-tab-char)


(global-linum-mode t)

;; Autoload Files
(find-file "/home/god/Dropbox/orgmode/TODO.org")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("bcd8b3fc2d82d764a9692c754485344257caf017d3fbdfb18f4db022a7b9a58f" default)))
 '(package-selected-packages
   (quote
    (tramp-term evil frame-mode sudoku challenger-deep-theme twittering-mode))))

;; Custom Key Binds
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-co" 'org-capture)
(define-key global-map "\C-cd" 'sunrise-cd)
(define-key global-map "\C-cb" 'browse-url)

;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 50 :width normal :foundry "1ASC" :family "DejaVu Sans Mono"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:weight normal :height 85 :width normal :foundry "1ASC" :family "DejaVu Sans Mono")))))
