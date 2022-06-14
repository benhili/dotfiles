;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Ben Hili"
      user-mail-address "ben.hili1994@gmail.com")

;; For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)
(setq org-directory "~/org/")

(setq-default evil-escape-key-sequence "fd")

(setq doom-font (font-spec :family "Fira Code" :size 13)
      doom-big-font (font-spec :family "Fira Code" :size 16))

(set-face-bold-p 'bold nil)

(setq ns-use-thin-smoothing t)
(setq pixel-scroll-precision-mode t)
