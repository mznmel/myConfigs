(server-start)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

;(package-refresh-contents) ;; Uncomment to update packages
(package-initialize)

;; Modern Emacs
;; Mostly from: http://ergoemacs.org/emacs/emacs_make_modern.html
(cua-mode t)
(transient-mark-mode 1) ; Standard selection-highlighting behaviour
(setq cua-keep-region-after-copy t) ; Standard Windows behaviour
(setq visible-bell 1)

(electric-pair-mode 1) ;; auto-insert/close bracket pairs
(global-linum-mode 1) ;; line numbers
(column-number-mode 1) ;; cursor's column position
(setq make-backup-files nil) ;; stop creating backup~ files
(setq auto-save-default nil) ;; stop creating #autosave# files

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time    
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling    
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse    
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; keep a list of recently opened files
;; call recentf-open-files to list and open recently opened file
(recentf-mode 1)

;; gui
(tool-bar-mode -1)
(menu-bar-mode 1)
(global-hl-line-mode 1) ; highlight current line

;; theme
(package-install 'color-theme-sanityinc-tomorrow)
(load-theme 'sanityinc-tomorrow-eighties t)

;; font
(set-face-attribute 'default nil :family "Consolas" :height 140)

;; keep a list of recently opened files
;; call recentf-open-files to list and open recently opened file
(recentf-mode 1)

;; enable ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess) 
(setq ido-file-extensions-order '(".org" ".txt" ".py" ".rb" ".html"))
(ido-mode 1)

;; icomplete
;; shows minibuffer completion preview
(icomplete-mode 99)

;; Smart-Mode-Line
;; better mode-line, for example it better highlights the active window bar!
(package-install 'smart-mode-line)
(sml/setup)
(sml/apply-theme 'dark)
(add-to-list 'sml/replacer-regexp-list '("^c:/Users/mkhDev/Dropbox/" "DropBox/") t)

;; expand-region
(package-install 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

; Auto-complete
(package-install 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; Web-mode
(package-install 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(package-install 'evil)
(evil-mode 1)
(define-key evil-ex-map "e " 'ido-find-file)
(define-key evil-ex-map "w " 'ido-write-file)
(define-key evil-ex-map "b " 'ido-switch-buffer)

(setq js-indent-level 2)

;; OrgMode
;(setq org-replace-disputed-keys t)
(package-install 'org-plus-contrib)
(require 'cl) ; a fix for a bug in org-drill!
(require 'org)
(require 'org-drill)
