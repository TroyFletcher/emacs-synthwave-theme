;;; synthwave-theme.el --- 1980's Emacs color theme on dark background

;; Copyright (C) 2003-2019 Free Software Foundation, Inc.

;; Author:TroyFletcher
;; URL: https://github.com/TroyFletcher/emacs-synthwave-theme
;; Version: 201906...
;; Keywords: color theme

;; This theme was generated with vimco.el
;;   You can get it from:
;;   <https://github.com/DoMiNeLa10/vimco>
;;
;;   Absolutely legend, this guy ^^^^ -Troy
;;
;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This high-contrast 1980's retro cyber theme uses bright colors on a
;; dark background.
;;
;; To use it, put the following in your Emacs configuration file:
;;
;;   (load-theme 'synthwave t)
;;
;; Code remodeled to match leuven-theme.el style and extended to more modes
;;
;; Requirements: Emacs 24+.
;;

;;; Code:

;;; Options.
;;; Lifted directly from leuven-theme
(defgroup synthwave nil
  "Synthwave theme options.
The theme has to be reloaded after changing anything in this group."
  :group 'faces)

(defcustom synthwave-scale-outline-headlines t
  "Scale `outline' (and `org') level-1 headlines.
This can be nil for unscaled, t for using the theme default, or a scaling number."
  :type '(choice
          (const :tag "Unscaled" nil)
          (const :tag "Default provided by theme" t)
          (number :tag "Set scaling"))
  :group 'synthwave)

(defcustom synthwave-scale-org-agenda-structure t
  "Scale Org agenda structure lines, like dates.
This can be nil for unscaled, t for using the theme default, or a scaling number."
  :type '(choice
          (const :tag "Unscaled" nil)
          (const :tag "Default provided by theme" t)
          (number :tag "Set scaling"))
  :group 'synthwave)

(defun synthwave-scale-font (control default-height)
  "Function for splicing optional font heights into face descriptions.
CONTROL can be a number, nil, or t.  When t, use DEFAULT-HEIGHT."
  (cond
   ((numberp control) (list :height control))
   ((eq t control) (list :height default-height))
   (t nil)))

;;; Theme Faces
(deftheme synthwave
  "Dark retro 1980's theme with bold colors.")

(let* (
       (class '((class color) (min-colors 89)))
       ;; Synthwave colors
       (near-black "#181615")
       (near-near-black "#191716")
       (near-white "#f9f9f9")
       (near-near-white "#e0e0e0")

       (synth-lighter-blue "#0a99ff")
       (synth-light-blue "#006daf")
       (synth-pale-blue "#004fd0")
       (synth-blue "#1100cc")
       (synth-deep-blue "#080088")
       (synth-dark-blue "#040055")
       (synth-subtle-blue "#020033")
       (synth-light-cyan "#96fffa")
       (synth-pale-cyan "#61f0cc")
       (synth-cyan "#00cfbb")
       (synth-deep-cyan "#007950")
       (synth-dark-cyan "#004040")
       (synth-subtle-cyan "#002014")
       (synth-light-gold "#ffffab")
       (synth-pale-gold "#f0e0a0")
       (synth-gold "#ecd000")
       (synth-deep-gold "#ac9c00")
       (synth-dark-gold "#8c7c20")
       (synth-light-gray "#e0dfe8")
       (synth-pale-gray "#c2d0d8")
       (synth-gray "#a1a8b4")
       (synth-deep-gray "#80848c")
       (synth-dark-gray "#404246")
       (synth-pale-green "#affc4c")
       (synth-green "#66fc4c")
       (synth-deep-green "#50e030")
       (synth-dark-green "#126020")
       (synth-indigo "#3f007a")
       (synth-lilac "#6a61f2")
       (synth-orange "#dd9010")
       (synth-deep-orange "#994433")
       (synth-light-pink "#ee99ff")
       (synth-pale-pink "#dd77ff")
       (synth-pink "#dd00ff")
       (synth-deep-pink "#9900aa")
       (synth-dark-pink "#770088")
       (synth-pale-purple "#7f00e7")
       (synth-purple "#5f00d7")
       (synth-deep-purple "#530060")
       (synth-dark-purple "#2a0030")
       (synth-subtle-purple "#1a0018")
       (synth-deep-red "#902025")
       (synth-dark-red "#601220")

       (cursor-color synth-pink)
       (default-background near-black)
       (mode-line-active synth-purple)
       (mode-line-inactive synth-lilac)
       (verbatim-background near-near-black)

       ;; Generic, named color schemes (modified from leuven.el)
       (cancel `(:slant italic :strike-through t :foreground ,synth-gray))
       (clock-line `(:box (:line-width 1 :color ,synth-pale-blue) :foreground ,near-black :background ,synth-gold))
       (code-block `(:foreground ,near-near-white :background ,synth-subtle-purple))
       (code-inline `(:foreground ,near-near-white :background ,synth-subtle-purple))
       (column `(:height 1.0 :weight normal :slant normal :underline nil :strike-through nil :foreground ,synth-dark-gold :background ,near-near-black))
       (completion-inline `(:weight normal :foreground ,synth-pale-pink :inherit hl-line)) ; Like Google.
       (completion-other-candidates `(:weight bold :foreground ,synth-dark-pink :background ,near-near-black))
       (completion-selected-candidate `(:weight bold :foreground ,near-near-white :background ,synth-pink))
       (grep-file-name `(:weight bold :foreground ,synth-cyan))
       (grep-line-number `(:weight bold :foreground ,synth-green))

       (highlight-current-line `(:background ,synth-deep-purple))
       (highlight-current-tag `(:background ,synth-dark-gray))

       (highlight-blue `(:background ,synth-dark-blue))
       (highlight-gray `(:background ,synth-dark-gray))
       (highlight-green `(:background ,synth-deep-green))
       (highlight-purple `(:background ,synth-deep-purple))
       (highlight-gold `(:background ,synth-dark-gold))

       (link `(:weight normal :underline t :foreground ,synth-light-blue))
       (link-no-underline `(:weight normal :foreground ,synth-light-blue))
       (link-visited `(:weight normal :underline t :foreground ,synth-deep-purple))
       (link-visited-no-underline `(:weight normal :foreground ,synth-deep-purple))

       (mail-header-name `(:family "Sans Serif" :weight normal :foreground ,synth-light-gold))
       (mail-header-other `(:family "Sans Serif" :slant normal :foreground ,synth-gold))
       (mail-header-subject `(:family "Sans Serif" :weight bold :foreground ,synth-green))
       (mail-read `(:foreground ,synth-dark-gold))
       (mail-read-high `(:foreground ,synth-deep-gold))
       (mail-ticked `(:foreground ,synth-deep-red))
       (mail-to `(:family "Sans Serif" :underline nil :foreground ,synth-pale-gold))
       (mail-unread `(:weight bold :foreground ,near-near-white))
       (mail-unread-high `(:weight bold :foreground ,synth-gold))

       (match `(:weight bold :background ,synth-gold)) ; occur patterns + match in helm for files + match in Org files.

       (ol1 `(,@(synthwave-scale-font synthwave-scale-outline-headlines 1.4) :weight bold :overline ,synth-deep-red :foreground ,synth-pink :background ,near-near-black))
       (ol2 `(,@(synthwave-scale-font synthwave-scale-outline-headlines 1.2) :weight bold :overline ,synth-deep-purple :foreground ,synth-pale-purple :background ,near-near-black))
       (ol3 `(:height 1.0 :weight bold :foreground ,synth-dark-pink :background ,near-near-black))
       (ol4 `(:height 1.0 :weight bold :slant normal :foreground ,synth-deep-gold))
       (ol5 `(:height 1.0 :weight bold :slant normal :foreground ,synth-dark-gold))
       (ol6 `(:height 1.0 :weight bold :slant italic :foreground ,synth-deep-orange))
       (ol7 `(:height 1.0 :weight bold :slant italic :foreground ,synth-deep-red))
       (ol8 `(:height 1.0 :weight bold :slant italic :foreground ,synth-dark-red))

       (paren-matched `(:background ,synth-dark-green))
       (paren-unmatched `(:weight bold :underline ,synth-dark-red :foreground ,synth-deep-red :background ,near-near-black))

       (tab `(:foreground ,near-near-black :background ,synth-dark-blue))
       (trailing `(:foreground "#E8E8E8" :background ,synth-dark-blue))
      )

  (custom-theme-set-faces
   'synthwave
   ;; default faces
   `(cursor ((,class (:background ,cursor-color :foreground "black"))))
   `(default ((,class (:background ,default-background :foreground ,near-white))))

   `(bold ((,class (:weight bold :foreground "white"))))
   `(bold-italic ((,class (:weight1 bold :slant italic :foreground "white"))))
   `(italic ((,class (:slant italic :foreground "white"))))
   `(underline ((,class (:underline t :background ,near-near-black :foreground ,near-white))))

   ;; highlight faces
   `(fringe ((,class (:underline t :background ,synth-deep-cyan :foreground ,synth-light-cyan))))
   `(highlight ((,class ,highlight-current-line)))
   `(highlight-changes ((,class (:foreground nil)))) ;; leuven comment: blue "#2E08B5"
   `(highlight-changes-delete ((,class (:strike-through nil :foreground nil)))) ;; leuven comment: red "#B5082E"
   `(highlight-symbol-face ((,class (:background ,synth-pale-gold))))
   `(hl-line ((,class ,highlight-current-line)))
   `(hl-tags-face ((,class ,highlight-current-tag))) ; ~ Pair highlighting (matching tags).
   `(isearch ((,class (:inverse-video t :background ,synth-deep-pink :foreground "white"))))
   `(isearch-lazy-highlight-face ((,class (:inverse-video t :background ,synth-pink :foreground "white"))))
   `(lazy-highlight ((,class (:foreground ,near-near-black :background ,synth-dark-gold)))) ; Isearch others (see `match')
   `(region ((,class (:inverse-video t :background ,synth-deep-purple))))
   `(secondary-selection ((,class ,match))) ; Used by Org-mode for highlighting matched entries and keywords..
   `(query-replace ((,class (:inherit isearch))))
   `(trailing-whitespace ((,class ,trailing)))
   `(whitespace-hspace ((,class (:foreground ,synth-light-gray)))) ; see also `nobreak-space'
   `(whitespace-indentation ((,class ,tab)))
   `(whitespace-line ((,class (:foreground ,synth-orange :background ,synth-dark-blue))))
   `(whitespace-tab ((,class ,tab)))
   `(whitespace-trailing ((,class ,trailing)))

   ;; completion faces
   `(ac-candidate-face ((,class ,completion-other-candidates)))
   `(ac-candidate-mouse-face ((,class (:inherit highlight))))
   `(ac-completion-face ((,class ,completion-inline)))
   `(ac-selection-face ((,class ,completion-selected-candidate)))

   `(company-preview-common ((,class ,completion-inline)))
   `(company-scrollbar-bg ((,class (:background ,synth-light-gray))))
   `(company-scrollbar-fg ((,class (:background ,synth-pale-gray)))) ; Scrollbar (visible).
   `(company-tooltip ((,class ,completion-other-candidates))) ; Suffix in tooltip.
   `(company-tooltip-annotation ((,class (:weight normal :foreground ,synth-blue)))) ; Annotation.
   `(company-tooltip-annotation-selection ((,class (:weight normal :foreground ,synth-light-gold)))) ; Annotation (for selection).
   `(company-tooltip-common ((,class (:weight normal :foreground ,synth-pink :inherit company-tooltip)))) ; Prefix + common part in tooltip.
   `(company-tooltip-common-selection ((,class (:weight normal :foreground ,synth-light-gold :inherit company-tooltip-selection)))) ; Prefix + common part in tooltip (for selection).
   `(company-tooltip-selection ((,class ,completion-selected-candidate))) ; Suffix in tooltip (for selection).

   `(compare-windows ((,class (:background ,synth-gold))))

   `(compilation-error ((,class (:weight bold :foreground ,synth-deep-red)))) ; Used for grep error messages.
   `(compilation-info ((,class ,grep-file-name)))
   `(compilation-line-number ((,class ,grep-line-number)))
   `(compilation-mode-line-exit ((,class (:weight bold :foreground ,synth-pale-green)))) ; :exit[matched]
   `(compilation-mode-line-fail ((,class (:weight bold :foreground ,synth-lilac)))) ; :exit[no match]
   `(compilation-mode-line-run ((,class (:weight bold :foreground ,synth-dark-gold)))) ; :run
   `(compilation-warning ((,class (:weight bold :foreground ,synth-orange))))
   `(popup-scroll-bar-background-face ((,class (:background ,synth-light-gray))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,synth-pale-gray)))) ; Scrollbar (visible).

   ;; Button and link faces.
   `(link ((,class ,link)))
   `(link-visited ((,class ,link-visited)))
   `(button ((,class ,link)))
   `(header-line ((,class (:box (:line-width 1 :color ,near-near-white) :foreground ,synth-deep-pink :background ,near-near-black))))

   ;; Line numbers
   `(linum ((,class (:background "black" :foreground ,synth-pink))))
   `(line-number ((,class (:background "black" :foreground ,synth-pink))))

   ;; mode line faces
   `(mode-line ((,class (:weight bold :background ,mode-line-active :foreground ,near-black))))
   `(mode-line-buffer-id ((,class (:weight bold :background ,mode-line-inactive :foreground ,near-black))))
   `(mode-line-emphasis ((,class (:weight bold :foreground "white"))))
   `(mode-line-highlight ((,class (:weight bold :foreground "white"))))
   `(mode-line-inactive ((,class (:weight bold :background ,mode-line-inactive :foreground ,near-black))))

   ;; font-lock faces
   `(font-lock-builtin-face ((,class (:weight bold :foreground ,synth-pale-cyan)))) ;6cddf1
   `(font-lock-comment-delimiter-face ((,class (:foreground ,synth-dark-pink))))
   `(font-lock-comment-face ((,class (:background "#000000" :foreground ,synth-deep-pink))))
   `(font-lock-constant-face ((,class (:foreground ,synth-gray))))
   `(font-lock-doc-face ((,class (:background "#000000" :foreground ,synth-deep-pink))))
   `(font-lock-function-name-face ((,class (:weight bold :foreground ,synth-pink))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,synth-cyan))))
   `(font-lock-preprocessor-face ((,class (:foreground ,synth-pale-cyan))))
   `(font-lock-string-face ((,class (:foreground ,synth-pale-pink))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,synth-pale-blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,synth-light-cyan))))
   `(font-lock-warning-face ((,class (:background ,synth-deep-red :foreground ,near-white))))

   ;; Message faces.
   `(message-header-name ((,class ,mail-header-name)))
   `(message-header-cc ((,class ,mail-to)))
   `(message-header-other ((,class ,mail-header-other)))
   `(message-header-subject ((,class ,mail-header-subject)))
   `(message-header-to ((,class ,mail-to)))
   `(message-cited-text ((,class (:foreground ,synth-light-blue :background ,synth-subtle-purple))))
   `(message-separator ((,class (:family "Sans Serif" :weight normal :foreground ,synth-dark-purple))))
   `(message-header-newsgroups ((,class (:family "Sans Serif" :foreground ,synth-purple))))
   `(message-header-xheader ((,class ,mail-header-other)))
   `(message-mml ((,class (:foreground ,synth-dark-green))))

   ;; org-mode faces (the real reason)
   `(org-agenda-block-count ((,class (:weight bold :foreground ,synth-dark-purple))))
   `(org-agenda-calendar-event ((,class (:weight bold :foreground ,synth-lighter-blue :background ,synth-dark-purple))))
   `(org-agenda-calendar-sexp ((,class (:foreground ,synth-lighter-blue :background ,synth-dark-purple))))
   `(org-agenda-clocking ((,class (:foreground "black" :background ,synth-gold))))
   `(org-agenda-column-dateline ((,class ,column)))
   `(org-agenda-current-time ((,class (:underline t :foreground ,synth-deep-purple))))
   `(org-agenda-date ((,class (,@(synthwave-scale-font synthwave-scale-org-agenda-structure 1.6) :weight bold :foreground ,synth-light-pink))))
   `(org-agenda-date-today ((,class (,@(synthwave-scale-font synthwave-scale-org-agenda-structure 1.6) :weight bold :foreground ,synth-light-pink :background ,synth-subtle-purple))))
   `(org-agenda-date-weekend ((,class (,@(synthwave-scale-font synthwave-scale-org-agenda-structure 1.6) :weight bold :foreground ,synth-pale-pink))))
   `(org-agenda-diary ((,class (:weight bold :foreground ,synth-pink :background ,synth-subtle-purple))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,synth-pink :background ,synth-dark-purple))))
   `(org-agenda-done ((,class (:foreground ,synth-purple :background ,synth-dark-purple))))
   `(org-agenda-filter-category ((,class (:weight bold :foreground ,synth-deep-gold))))
   `(org-agenda-filter-tags ((,class (:weight bold :foreground ,synth-deep-pink))))
   `(org-agenda-restriction-lock ((,class (:background ,synth-blue))))
   `(org-agenda-structure ((,class (,@(synthwave-scale-font synthwave-scale-org-agenda-structure 1.6) :weight bold :foreground ,synth-purple))))

   `(org-archived ((,class (:foreground ,synth-dark-blue))))
   `(org-beamer-tag ((,class (:box (:line-width 1 :color ,synth-gold) :foreground ,synth-light-gold))))
   `(org-block ((,class ,code-block)))
   `(org-block-background ((,class (:background ,near-near-black))))
   `(org-block-begin-line ((,class (:underline ,synth-dark-gray :foreground ,synth-light-blue :background ,synth-dark-purple))))
   `(org-block-end-line ((,class (:overline ,synth-dark-gray :foreground ,synth-light-blue :background ,synth-dark-purple))))
   `(org-checkbox ((,class (:weight bold :box (:line-width 1 :style pressed-button) :foreground ,near-near-white :background ,near-near-black))))
   `(org-clock-overlay ((,class (:foreground ,near-near-black :background ,synth-dark-gold))))
   `(org-code ((,class ,code-inline)))
   `(org-column ((,class ,column)))
   `(org-column-title ((,class ,column)))
   `(org-date ((,class (:underline t :foreground ,synth-deep-cyan))))
   `(org-default ((,class (:foreground ,near-white :background ,near-black))))
   `(org-dim ((,class (:foreground ,synth-gray))))
   `(org-document-info ((,class (:foreground ,synth-pale-cyan :background ,near-black))))
   `(org-document-info-keyword ((,class (:foreground ,synth-light-cyan :background ,near-black))))
   `(org-document-title ((,class (:height 1.8 :weight bold :foreground ,synth-cyan))))
   `(org-done ((,class (:weight bold :box (:line-width 1 :color ,synth-purple) :foreground ,synth-deep-gold :background ,synth-subtle-purple))))
   `(org-drawer ((,class (:foreground ,synth-cyan))))
   `(org-ellipsis ((,class (:underline nil :foreground ,synth-gray))))
   `(org-example ((,class ,code-block)))
   `(org-footnote ((,class (:underline t :foreground ,synth-deep-cyan))))
   `(org-formula ((,class (:foreground ,synth-pale-purple))))
   `(org-headline-done ((,class (:height 1.0 :weight normal :foreground ,synth-deep-gray))))
   `(org-hide ((,class (:foreground ,near-near-black))))
   `(org-inlinetask ((,class (:box (:line-width 1 :color ,near-near-black) :foreground ,synth-dark-pink :background ,near-black))))
   `(org-latex-and-related ((,class (:foreground ,synth-purple :background ,near-near-black))))
   `(org-level-1 ((,class ,ol1)))
   `(org-level-2 ((,class ,ol2)))
   `(org-level-3 ((,class ,ol3)))
   `(org-level-4 ((,class ,ol4)))
   `(org-level-5 ((,class ,ol5)))
   `(org-level-6 ((,class ,ol6)))
   `(org-level-7 ((,class ,ol7)))
   `(org-level-8 ((,class ,ol8)))
   `(org-link ((,class ,link)))
   `(org-list-dt ((,class (:weight bold :foreground ,synth-deep-pink))))
   `(org-macro ((,class (:weight bold :foreground ,synth-gold))))
   `(org-meta-line ((,class (:slant normal :foreground ,synth-pale-cyan))))
   `(org-mode-line-clock ((,class (:box (:line-width 1 :color ,synth-deep-purple) :foreground ,synth-dark-gold :background ,near-near-black))))
   `(org-mode-line-clock-overrun ((,class (:weight bold :box (:line-width 1 :color ,synth-deep-red) :foreground ,synth-gold :background ,synth-deep-gray))))
   `(org-number-of-items ((,class (:weight bold :foreground ,synth-light-pink :background ,near-near-black))))
   `(org-property-value ((,class (:foreground ,synth-deep-cyan))))
   `(org-quote ((,class (:slant italic :foreground ,synth-dark-pink :background ,near-near-black))))
   `(org-scheduled ((,class (:foreground ,synth-dark-purple))))
   `(org-scheduled-previously ((,class (:foreground ,synth-deep-pink))))
   `(org-scheduled-today ((,class (:weight bold :foreground ,synth-light-pink :background ,synth-dark-purple))))
   `(org-sexp-date ((,class (:foreground ,synth-dark-pink))))
   `(org-special-keyword ((,class (:weight bold :foreground ,synth-deep-cyan :background ,near-near-black))))
   `(org-table ((,class (:foreground ,synth-light-blue :background ,near-near-black)))) ;; :inherit fixed-pitch))))
   `(org-tag ((,class (:weight normal :slant italic :foreground ,near-near-white :background ,synth-deep-gold))))
   `(org-target ((,class (:foreground ,synth-pale-blue))))
   `(org-time-grid ((,class (:foreground ,near-near-white))))
   `(org-todo ((,class (:weight bold :box (:line-width 1 :color ,synth-pale-purple) :foreground ,synth-gold :background ,synth-deep-purple))))
   `(org-upcoming-deadline ((,class (:foreground ,synth-pale-pink))))
   `(org-verbatim ((,class (:foreground ,synth-light-blue :background ,verbatim-background))))
   `(org-verse ((,class (:slant italic :inherit org-block))))
   `(org-warning ((,class (:weight bold :foreground ,synth-light-pink :background ,synth-lighter-blue))))
   `(outline-1 ((,class ,ol1)))
   `(outline-2 ((,class ,ol2)))
   `(outline-3 ((,class ,ol3)))
   `(outline-4 ((,class ,ol4)))
   `(outline-5 ((,class ,ol5)))
   `(outline-6 ((,class ,ol6)))
   `(outline-7 ((,class ,ol7)))
   `(outline-8 ((,class ,ol8)))


   ;; ----------------------------------------------------------
   `(show-paren-match-face ((,class (:background "#333333"))))
   `(ac-selection-face ((,class (:background "#891a8f" :foreground "white"))))
   `(ac-candidate-face ((,class (:background "#275b6c" :foreground "#00ffd5"))))
   `(flyspell-duplicate ((,class (:underline t :background "#192224" :foreground "#F9F9FF"))))
   `(flyspell-incorrect ((,class (:underline t :background "#192224" :foreground "#F9F9FF"))))
   `(dired-directory ((,class (:weight bold :foreground ,synth-pale-blue))))


  )
)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'synthwave)
;; Local Variables:
;; no-byte-compile: t
;; End:
