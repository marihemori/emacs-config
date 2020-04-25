(require 'package)
(add-to-list
   'package-archives
   '("melpa" . "https://melpa.org/packages/") ; many packages won't show if using stable
   '("gnu" . "http://elpa.gnu.org/packages/"))

(package-initialize)

;; ui
(tool-bar-mode -1)                              ;; disable toolbar
(menu-bar-mode -1)                              ;; disable menubar
(scroll-bar-mode -1)                            ;; disable scrollbar
(fringe-mode 1)                                 ;; shrink fringes
(show-paren-mode 1)                             ;; show parent parentheses
(global-hl-line-mode t)                         ;; highlight current line
(setq inhibit-startup-message t)                ;; disable startup screen
(setq x-select-enable-clipboard t)              ;; enable clipboard outside emacs
(setq ring-bell-function 'ignore)               ;; disable ring-bell
(defalias 'yes-or-no-p 'y-or-n-p)               ;; transform yes-or-no to y-or-n
(setq scroll-conservatively 100)                ;; conservative scrolling
(global-prettify-symbols-mode t)                ;; prettify symbols mode
(load-theme 'spacemacs-dark t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)

;; code related
(display-line-numbers-mode 1)                   ;; show line numbers
(setq-default display-line-numbers 'relative)   ;; set them to be relative
(setq electric-pair-pairs '((?\{ . ?\})
                            (?\( . ?\))
                            (?\[ . ?\])
                            (?\" . ?\")))       ;; enable bracket pair-matching
(electric-pair-mode t)                          ;; enable bracket pair-matching
(setq-default indent-tabs-mode nil)             ;; no tab indent

;; backups
(setq make-backup-files nil)                    ;; disable backup
(setq auto-save-default nil)                    ;; disable backup
(setq uniquify-buffer-name-style 'forward