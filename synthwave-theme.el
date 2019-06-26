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


(deftheme synthwave)
(custom-theme-set-faces 'synthwave
			'(underline
			  ((((class color)
			     (min-colors 89))
			    (:underline t :background "#192224" :foreground "#F9F9FF"))))
			'(font-lock-string-face
			  ((((class color)
			     (min-colors 89))
			    (:background "#000000" :foreground "#dd00ff"))))
			'(font-lock-constant-face
			  ((((class color)
			     (min-colors 89))
			    (:foreground "#A1A6A8"))))
			'(font-lock-warning-face
			  ((((class color)
			     (min-colors 89))
			    (:background "#912C00" :foreground "#A1A6A8"))))
			'(cursor
			  ((((class color)
			     (min-colors 89))
			    (:background "#FF00BA" :foreground "#000000"))))
			'(font-lock-type-face
			  ((((class color)
			     (min-colors 89))
			    (:weight bold :foreground "#536991"))))
			'(font-lock-keyword-face
			  ((((class color)
			     (min-colors 89))
			    (:weight bold :foreground "#0098a3"))))
			'(font-lock-preprocessor-face
			  ((((class color)
			     (min-colors 89))
			    (:foreground "#6cddf1"))))
			'(font-lock-function-name-face
			  ((((class color)
			     (min-colors 89))
			    (:weight bold :foreground "#ff00bb"))))
			'(font-lock-doc-face
			  ((((class color)
			     (min-colors 89))
			    (:background "#000000" :foreground "#9c38bd"))))
			'(font-lock-comment-face
			  ((((class color)
			     (min-colors 89))
			    (:background "#000000" :foreground "#9c38bd"))))
			'(font-lock-builtin-face
			  ((((class color)
			     (min-colors 89))
			    (:weight bold :foreground "#6cddf1"))))
			'(font-lock-variable-name-face
			  ((((class color)
			     (min-colors 89))
			    (:background "#000000" :foreground "#96f3fa"))))
			'(default
			   ((((class color)
			      (min-colors 89))
			     (:background "#181615" :foreground "#ffffff"))))
			'(show-paren-match-face
			  ((((class color)
			     (min-colors 89))
			    (:background "#333333"))))
			'(hl-line
			  ((((class color)
			     (min-colors 89))
			    (:background "#480a4c"))))
			'(highline-face
			  ((((class color)
			     (min-colors 89))
			    (:underline t :background "#222E30"))))
			'(ac-selection-face
			  ((((class color)
			     (min-colors 89))
			    (:background "#891a8f" :foreground "#ffffff"))))
			'(ac-candidate-face
			  ((((class color)
			     (min-colors 89))
			    (:background "#275b6c" :foreground "#00ffd5"))))
			'(flyspell-duplicate
			  ((((class color)
			     (min-colors 89))
			    (:underline t :background "#192224" :foreground "#F9F9FF"))))
			'(flyspell-incorrect
			  ((((class color)
			     (min-colors 89))
			    (:underline t :background "#192224" :foreground "#F9F9FF"))))
			'(region
			  ((((class color)
			     (min-colors 89))
			    (:inverse-video t :background "#530060"))))
			'(mode-line-inactive
			  ((((class color)
			     (min-colors 89))
			    (:weight bold :background "#6a61f2" :foreground "#000000"))))
			'(mode-line-buffer-id
			  ((((class color)
			     (min-colors 89))
			    (:weight bold :background "#00ffff" :foreground "#000000"))))
			'(mode-line
			  ((((class color)
			     (min-colors 89))
			    (:weight bold :background "#5f00d7" :foreground "#000000"))))
			'(fringe
			  ((((class color)
			     (min-colors 89))
			    (:underline t :foreground "#ff00bb"))))
			'(linum
			  ((((class color)
			     (min-colors 89))
			    (:underline t :foreground "#ff00bb"))))
			'(isearch
			  ((((class color)
			     (min-colors 89))
			    (:inverse-video t :background "#ad00bd" :foreground "#ffffff"))))
			'(isearch-lazy-highlight-face
			  ((((class color)
			     (min-colors 89))
			    (:inverse-video t :background "#d500ff" :foreground "#ffffff"))))
			'(dired-directory
			  ((((class color)
			     (min-colors 89))
			    (:weight bold :foreground "#536991")))))

(provide-theme 'synthwave)

;; Local Variables:
;; no-byte-compile: t
;; End:
