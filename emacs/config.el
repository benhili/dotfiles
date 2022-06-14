;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Ben Hili"
      user-mail-address "ben.hili1994@gmail.com")

(setq doom-font (font-spec :family "IBM Plex Mono" :size 13))
(setq doom-theme 'doom-city-lights)
(setq lsp-log-io t)

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
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.


(setq-default evil-escape-key-sequence "fd")

(setq doom-font (font-spec :family "Fira Code" :size 13)
      doom-big-font (font-spec :family "Fira Code" :size 16))

(set-face-bold-p 'bold nil)

(setq ns-use-thin-smoothing t)
(setq pixel-scroll-precision-mode t)
