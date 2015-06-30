(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(tool-bar-mode -1)

(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-mode 1)
(require 'evil-org)
(add-hook 'org-mode-hook
          (lambda ()
            (org-indent-mode t))
          t)
(savehist-mode 1)
(require 'sunshine)
(setq sunshine-location "97140,USA")
(setq sunshine-show-icons t)

; Turn on visual line mode
(global-visual-line-mode 1)
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;Org stuff to review and fix later
(setq org-directory "~/Dropbox/org")
(setq org-mobile-directory "~/Dropbox/org_mobile")
(setq org-default-notes-file (concat org-directory "/notes.org"))
;(setq org-mobile-inbox-for-pull "~/Dropbox/org/inbox.org")
;(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-files '("~/Dropbox/org/home.org" "~/Dropbox/org/work.org"))

;; Org mode setup
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(define-key evil-insert-state-map [remap newline] 'newline)
(define-key evil-insert-state-map [remap newline-and-indent] 'newline-and-indent)

; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))
(load-theme 'wheatgrass)

(set-default-font "Ubuntu Mono 16")
