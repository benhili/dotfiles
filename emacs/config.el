;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Ben Hili"
      user-mail-address "ben.hili1994@gmail.com")

(setq doom-font (font-spec :family "IBM Plex Mono" :size 11))
(setq doom-theme 'doom-city-lights)

;; Escape vim mode sequence
(setq-default evil-escape-key-sequence "fd")

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.


(require 'prettier-js)
(setq js-indent-level 2)
(setq-default typescript-indent-level 2)

(add-hook 'js2-mode-hook  'prettier-js-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)

;; highlight src blocks in org mode
(setq org-src-fontify-natively t)
(setq org-directory (expand-file-name "~/Documents/org"))

(setq company-idle-delay 0)
(setq company-minimum-prefix-length 4)

(defun prettier-format-php ()
  "Format php files with prettier on save"
  (when (eq major-mode 'php-mode)
    (shell-command-to-string (format "prettier %s --write" buffer-file-name))))

(add-hook 'after-save-hook #'prettier-format-php)

;; Use prettier for tsx files
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (prettier-js-mode))))


;; Ivy posframe
(require 'ivy-posframe)
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-center)))
(ivy-posframe-mode 1)

(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)
