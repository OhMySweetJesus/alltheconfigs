1(require 'package)
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

(require 'doom-modeline)
(require 'elpy)
(require 'better-defaults)
(require 'sunrise-commander)
(setq evil-want-C-u-scroll t)
(require 'org)
(require 'evil)
;; (require 'eaf)

(setq inhibit-splash-screen t)
;;(setq frame-background-mode 'dark)
(setq org-log-done t)
(setq org-agenda-files (list "~/KeepAss/TODO.org"
                             "~/KeepAss/SCHOOL.org"))
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "brave")
(doom-modeline-mode 1)
;;(evil-mode 1)
(setq-default tab-width 4)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)
(elpy-enable)


;; Fix tabs
(defun my-insert-tab-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t"))

(global-set-key (kbd "TAB") 'my-insert-tab-char)


(global-linum-mode t)

;; Autoload Files
;; (find-file "/home/god/Dropbox/orgmode/TODO.org")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(custom-enabled-themes (quote (doom-city-lights)))
 '(custom-safe-themes
   (quote
    ("43c808b039893c885bdeec885b4f7572141bd9392da7f0bd8d8346e02b2ec8da" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "9954ed41d89d2dcf601c8e7499b6bb2778180bfcaeb7cdfc648078b8e05348c6" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "a8c210aa94c4eae642a34aaf1c5c0552855dfca2153fa6dd23f3031ce19453d4" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "bcd8b3fc2d82d764a9692c754485344257caf017d3fbdfb18f4db022a7b9a58f" default)))
 '(hl-sexp-background-color "#1c1f26")
 '(package-selected-packages
   (quote
    (magit helm-dash solaire-mode shrink-path all-the-icons-gnus all-the-icons-dired all-the-icons-ivy doom-modeline doom-themes treemacs autopair markdown-mode projectile auto-complete material-theme tramp-term evil frame-mode sudoku challenger-deep-theme twittering-mode))))

;; Custom Key Binds
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-co" 'org-capture)
(define-key global-map "\C-cd" 'sunrise-cd)
(define-key global-map "\C-cb" 'browse-url)
(global-set-key (kbd "C-c c") 'auto-complete-mode)


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
