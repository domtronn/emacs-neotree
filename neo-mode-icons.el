;;; neo-mode-icons.el --- XPM Icons for the mode line

(require 'dash)
(require 'data-devicons (expand-file-name "./data-devicons.el"))
(require 'data-octicons (expand-file-name "./data-octicons.el"))

(defun neo-mode-icon-color-blend (c1 c2 &optional alpha)
  "Blend the two colors C1 and C2 with ALPHA.
C1 and C2 are in the format of `color-values'.
ALPHA is a number between 0.0 and 1.0 which corresponds to the
influence of C1 on the result."
  (setq alpha (or alpha 0.5))
  (apply #'neo-mode-icon-color-join
         (cl-mapcar
          (lambda (x y)
            (round (+ (* x alpha) (* y (- 1 alpha)))))
          c1 c2)))

(defun neo-mode-icon-color-join (r g b)
  "Build a color from R G B.
Inverse of `color-values'."
  (format "#%02x%02x%02x"
          (ash r -8)
          (ash g -8)
          (ash b -8)))

(defun neo-mode-icon-emacs-xpm (c1 c2)
  (create-image
	 (format "/* XPM */
static char *elisp_png[] = {
/* columns rows colors chars-per-pixel */
\"22 22 3 1 \",
\"+ c %s\",
\". c %s\",
\"  c %s\",
\"                      \",
\"                      \",
\"         ....         \",
\"       .........      \",
\"     ............     \",
\"    .........++...    \",
\"    ...++++++++...    \",
\"   .....++.........   \",
\"  .......++........   \",
\"  ........++.......   \",
\"  .....++++++.......  \",
\"  ...++++++.........  \",
\"  ...++++...........  \",
\"   ...++...........   \",
\"   ....+++.........   \",
\"    .....++++++...    \",
\"    .......++++...    \",
\"     ............     \",
\"       .........      \",
\"         .....        \",
\"                      \",
\"                      \"};"
					 c2
					 c1
					 ;; (neo-mode-icon-color-blend
					 ;; 	(color-values c1)
					 ;; 	(color-values c2) 0.4)
					 c2)
	 'xpm t :height 2 :ascent 'center))

(defun neo-mode-icon-org-xpm (c1 c2)
  (create-image
	 (format "/* XPM */
static char *org_mode_png[] = {
/* columns rows colors chars-per-pixel */
\"22 22 3 1 \",
\". c %s\",
\"o c %s\",
\"  c %s\",
\"                      \",
\"                     .\",
\"                    . \",
\"                  ..  \",
\"      oooo      ...   \",
\"     oooooo.oooo..    \",
\"    ooooo....oo.      \",
\"   ooooo....  ..      \",
\"   ooooo....  ..      \",
\"  ooooooo.........    \",
\"  oooooooo..........  \",
\"  ooooo.o...........  \",
\"  oooooo...     ...   \",
\"   oo.ooo..           \",
\"    o......           \",
\"     o......          \",
\"       .....          \",
\"         ...          \",
\"          ..          \",
\"           .          \",
\"                      \",
\"                      \"}; "
					 c1
					 (neo-mode-icon-color-blend
						(color-values c1)
						(color-values c2) 0.4)
					 c2)
	 'xpm t :height 2 :ascent 'center))


(defvar neo-mode-icon-alist 
  '((c-mode        devicon-icon "\xe639")
    (c++-mode      devicon-icon "\xE635")
    (c-sharp-mode  devicon-icon "\xe637")
    (coffee-mode   devicon-icon "\xe66a")
    (css-mode      devicon-icon "\xe679")
    (docker-mode   devicon-icon "\xe61f")
    (erlang-mode   devicon-icon "\xe617")
    (web-mode      devicon-icon "\xe7f7")
    (html-mode     devicon-icon "\xe7f7")
    (magit-mode    devicon-icon "\xe7a8")
    
    (java-mode     devicon-icon "\xe842")
    (mysql-mode    devicon-icon "\xeb61")
    (php-mode      devicon-icon "\xeb71")
    (scss-mode     devicon-icon "\xebcb")

    (dockerfile-mode  devicon-icon  "\xe61f")
    
    (js-mode         devicon-icon "javascript-badge")
    (js2-mode        devicon-icon "javascript-badge")
    (javascript-mode devicon-icon "javascript-badge")

    (emacs-lisp-mode  devicon-icon "gnu" 1.6)
    (org-mode         neo-mode-icon-xpm "org")
    
    (ruby-mode     octicon-icon "ruby" 1.2)
    (markdown-mode octicon-icon "markdown" 1.5)
    (json-mode     octicon-icon "settings" 1.4)
    (image-mode    octicon-icon "file-media" 1.4)
    (doc-view-mode octicon-icon "file-pdf" 1.4)
    (archive-mode  octicon-icon "file-zip" 1.4)
    (text-mode     octicon-icon "file-text" 1.4)
    
    (haskell-mode  mfizz-icon  "\xf129")
    (clojure-mode  mfizz-icon  "\xf10b")
    (elixir-mode   mfizz-icon  "\xf116")
    (nginx-mode    mfizz-icon  "\xf143")
    (perl-mode     mfizz-icon  "\xf14b")
    (play-mode     mfizz-icon  "\xf151")
    (python-mode   mfizz-icon  "\xf156")
    (scala-mode    mfizz-icon  "\xf15e")
    (bash-mode     mfizz-icon  "\xf160")
    (shell-mode    mfizz-icon  "\xf162")
    (spring-mode   mfizz-icon  "\xf165")))

(defvar bespoke-icon-alist
  '(("gulpfile" devicon-icon "\xe7ec")
    ("gruntfile" devicon-icon "grunt" 1.4)
    ("\\.git" octicon-icon "git-branch" 1.3)
    ("^LICENSE$" octicon-icon "book" 1.3)
    ("\\.node" devicon-icon "\xeb6a")))

(defun neo-mode-icon-xpm (mode)
  (propertize " " 'display
    (funcall (intern (format "neo-mode-icon-%s-xpm" mode)) (face-attribute 'default :foreground) (face-attribute 'default :background))
    'face `(:background ,(powerline-c1))
    'help-echo "Major mode\n\ mouse-1: Display major mode menu\n\ mouse-2: Show help for major mode\n\ mouse-3: Toggle minor modes"
    'local-map (let ((map (make-sparse-keymap)))
                 (define-key map [mode-line down-mouse-1]
                   `(menu-item ,(purecopy "Menu Bar") ignore
                               :filter (lambda (_) (mouse-menu-major-mode-map))))
                 (define-key map [mode-line mouse-2] 'describe-mode)
                 (define-key map [mode-line down-mouse-3] mode-line-mode-menu)
                 map)))

(defun neo-mode-icon () (neo-mode-icon-for-mode major-mode))
(defun neo-mode-icon-for-file (file)
  (let* ((bespoke (cdr (--first (string-match (car it) file) bespoke-icon-alist)))
         (mode (cdr (--first (string-match (car it) file) auto-mode-alist)))
         (neo-mode-icon (assoc mode neo-mode-icon-alist)))
    (if bespoke (apply (car bespoke) (cdr bespoke))
      (if neo-mode-icon (apply (cadr neo-mode-icon) (cddr neo-mode-icon))
        (if (file-name-extension file)
            (octicon-icon "file-code" 1.5)
          (octicon-icon "gear"))))))



(defun mfizz-icon (icon) (propertize icon 'face '(:family "mfizz" :weight extra-light) 'display '(height 1.0)))
(defun octicon-icon (name &optional height)
  (let ((icon (cdr (assoc name octicons-alist)))
        (height (or height 1.0)))
    (propertize icon 'face `(:family "github-octicons" :height ,height))))
(defun devicon-icon (name &optional height)
  (let ((icon (cdr (assoc name devicons-alist)))
        (height (or height 1.0)))
    (propertize icon 'face `(:family "iconmoon" :height ,height))))

(provide 'neo-mode-icons)

;;; neo-mode-icons.el ends here
