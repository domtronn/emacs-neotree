;;; neo-mode-icons.el --- XPM Icons for the mode line

(require 'dash)
(require 'data-faicons   "./data-faicons.el")
(require 'data-mficons   "./data-mficons.el")
(require 'data-devicons  "./data-devicons.el")
(require 'data-octicons  "./data-octicons.el")
(require 'data-fileicons "./data-fileicons.el")

;; red
(defvar neo/red "#AC4142")
(defvar neo/lred "#EB595A")
(defvar neo/dred "#843031")
;; green
(defvar neo/green "#90A959")
(defvar neo/lgreen "#C6E87A")
(defvar neo/dgreen "#6D8143")

;; yellow
(defvar neo/yellow "#FFD446")
(defvar neo/lyellow "#FFC16D")
(defvar neo/dyellow "#B48D56")

;; blue
(defvar neo/blue "#6A9FB5")
(defvar neo/lblue "#8FD7F4")
(defvar neo/dblue "#446674")

;; maroon
(defvar neo/maroon "#8F5536")
(defvar neo/lmaroon "#CE7A4E")
(defvar neo/dmaroon "#72584B")

;; purple
(defvar neo/purple "#AA759F")
(defvar neo/lpurple "#E69DD6")
(defvar neo/dpurple "#694863")

;; orange
(defvar neo/orange "#D28445")
(defvar neo/lorange "#FFA151")
(defvar neo/dorange "#915B2D")

;; cyan
(defvar neo/cyan "#75B5AA")
(defvar neo/lcyan "#A5FDEC")
(defvar neo/dcyan "#48746D")

;; pink
(defvar neo/pink "#F2B4B8")
(defvar neo/lpink "#FFBDC1")
(defvar neo/dpink "#B18286")

;; silver
(defvar neo/silver "#716E68")
(defvar neo/lsilver "#B9B6AA")
(defvar neo/dsilver "#838484")

(defvar neo/scale-factor 1.0)
(defvar neo/color-icons t)
(defvar neo/icon-alist
  '(
    ;; Meta
    ("\\.tags"          neo/octicon "tag" 1.0 0.0 neo/blue)
    ("^TAGS$"           neo/octicon "tag" 1.0 0.0 neo/blue)
    ("\\.log"           neo/octicon "bug" 1.0 0.0 neo/maroon)

    ;;
    ("\\.key$"          neo/octicon "key" nil 0.0 neo/lblue)
    ("\\.pem$"          neo/octicon "key" nil 0.0 neo/orange)
    ("\\.p12$"          neo/octicon "key" nil 0.0 neo/dorange)
    ("\\.crt$"          neo/octicon "key" nil 0.0 neo/lblue)
    ("\\.pub$"          neo/octicon "key" nil 0.0 neo/blue)

    ("^TODO$"           neo/octicon "checklist" nil 0.0 neo/lyellow)
    ("^LICENSE$"        neo/octicon "book" 1.0 0.0 neo/blue)
    ("^readme"          neo/octicon "book" 1.0 0.0 neo/lcyan)

    ("-?spec\\."        neo/faicon "flask" 1.0 0.0 neo/dgreen)
    ("-?test\\."        neo/faicon "flask" 1.0 0.0 neo/dgreen)

    ("\\.fish"          neo/devicon "terminal" nil nil neo/lpink)
    ("\\.zsh"           neo/devicon "terminal" nil nil neo/lcyan)

    ;; Config
    ("\\.node"          neo/devicon "nodejs-small" 1.0 -0.1 neo/green)
    ("\\.babelrc$"      neo/fileicon "babel" nil -0.1 neo/yellow)
    ("\\.bashrc$"       neo/mficon "script" 0.9 -0.1 neo/dpink)
    ("\\.bowerrc$"      neo/devicon "bower" 1.2 -0.1 neo/silver)
    ("^bower.json$"     neo/devicon "bower" 1.2 -0.1 neo/lorange)
    ("\\.ini$"          neo/octicon "settings" nil 0.0 neo/yellow)
    ("\\.eslintignore"  neo/fileicon "eslint" 0.8 -0.1 neo/purple)
    ("\\.eslint"        neo/fileicon "eslint" 0.8 -0.1 neo/lpurple)
    ("\\.git"           neo/mficon "git" 1.0 -0.1 neo/lred)
    ("nginx"            neo/fileicon "nginx" 0.9 -0.1 neo/dgreen)
    ("apache"           neo/mficon "apache" 0.9 -0.1 neo/dgreen)

    ("\\.dockerignore$" neo/fileicon "dockerfile" 1.2 -0.1 neo/dblue)
    ("^\\.?Dockerfile"      neo/fileicon "dockerfile" nil -0.1 neo/blue)
    ("^Brewfile$"       neo/faicon "beer" nil -0.1 neo/lsilver)
    ("\\.npmignore"     neo/fileicon "npm" nil -0.1 neo/dred)
    ("^package.json$"   neo/fileicon "npm" nil -0.1 neo/red)

    ("\\.[jc]son$"      neo/octicon "settings" nil 0.0 neo/yellow)
    ("\\.yml$"          neo/octicon "settings" nil 0.0 neo/dyellow)

    ("\\.pkg$"          neo/octicon "package" nil 0.0 neo/dsilver)
    ("\\.rpm$"          neo/octicon "package" nil 0.0 neo/dsilver)

    ("\\.elc$"          neo/octicon "file-binary" nil 0.0 neo/dsilver)

    ("\\.zip$"          neo/octicon "file-zip" nil 0.0 neo/lmaroon)
    ("\\.7z$"           neo/octicon "file-zip" nil 0.0 neo/lmaroon)


    ;; lock files
    ("~$"               neo/octicon "lock" nil 0.0 neo/maroon)

    ("\\.dmg$"          neo/octicon "tools" nil 0.0 neo/lsilver)
    ("\\.dll$"          neo/faicon "cogs" nil nil neo/silver)
    ("\\.DS_STORE$"     neo/faicon "cogs" nil nil neo/silver)

    ;; Source Codes
    ("\\.scpt$"         neo/fileicon "apple" nil nil neo/pink)
    ("\\.aup$"          neo/fileicon "audacity" nil nil neo/yellow)

    ("\\.java$"         neo/devicon "java" 1.2 -0.1 neo/purple)
    
    ("\\.mp3$"          neo/faicon "volume-up" nil nil neo/dred)
    ("\\.wav$"          neo/faicon "volume-up" nil nil neo/dred)
    ("\\.m4a$"          neo/faicon "volume-up" nil nil neo/dred)

    ("\\.jl$"           neo/fileicon "julia" nil 0.0 neo/purple)
    ("\\.matlab$"       neo/fileicon "matlab" nil nil neo/orange)

    ("\\.pl$"           neo/mficon "perl" nil nil neo/lorange)
    ("\\.pl6$"          neo/fileicon "perl6" nil nil neo/cyan)
    ("\\.pod$"          neo/devicon "perl" 1.2 -0.1 neo/lgreen)

    ("\\.php$"          neo/fileicon "php" nil -0.1 neo/lsilver)
    ("\\.pony$"         neo/fileicon "pony" nil -0.1 neo/maroon)
    ("\\.prol?o?g?$"    neo/devicon "prolog" 1.1 -0.1 neo/lmaroon)
    ("\\.py$"           neo/devicon "python" 1.3 -0.1 neo/dblue)

    ("\\.gem$"          neo/devicon "ruby-rough" nil nil neo/red)
    ("\\.rb$"           neo/octicon "ruby" nil 0.0 neo/lred)
    ("\\.rs$"           neo/devicon "rust" 1.2 -0.1 neo/maroon)
    ("\\.rlib$"         neo/devicon "rust" 1.2 -0.1 neo/dmaroon)
    ("\\.r[ds]?x?$"     neo/fileicon "R" nil nil neo/lblue)

    ("\\.scala$"        neo/mficon "scala" nil -0.1 neo/red)

    ("\\.swift$"        neo/devicon "swift" 1.2 -0.2 neo/green)

    ;; There seems to be a a bug with this font icon which does not
    ;; let you propertise it without it reverting to being a lower
    ;; case phi
    ("\\.c$"            neo/mficon "c-line" nil nil neo/blue)
    ("\\.h$"            neo/mficon "c-line" nil nil neo/purple)

    ("\\.cpp$"          neo/mficon "cplusplus-line" nil -0.2 neo/blue)
    ("\\.hpp$"          neo/mficon "cplusplus-line" nil -0.2 neo/purple)

    ("\\.csx?$"         neo/mficon "csharp-line" nil -0.1 neo/dblue)

    ("\\.clj$"          neo/devicon "clojure" 1.2 -0.1 neo/blue)

    ("\\.coffee$"       neo/mficon "coffeescript" 1.0 -0.1 neo/maroon)
    ("\\.iced$"         neo/mficon "coffeescript" 1.0 -0.1 neo/lmaroon)

    ;; Git
    ("^MERGE_"          neo/octicon "git-merge" nil 0.0 neo/red)
    ("^COMMIT_EDITMSG"  neo/octicon "git-commit" nil 0.0 neo/red)

    ;; Lisps
    ("\\.cl$"           neo/fileicon "clisp" nil nil neo/lorange)
    ("\\.l$"            neo/fileicon "lisp" nil nil neo/orange)
    ("\\.el$"           neo/fileicon "elisp" 0.8 -0.1 neo/purple)

    ;; Stylesheeting
    ("\\.css$"          neo/devicon "css3-full" nil -0.1 neo/yellow)
    ("\\.scss$"         neo/devicon "sass" nil -0.1 neo/pink)
    ("\\.sass$"         neo/devicon "sass" nil nil neo/dpink)
    ("\\.less$"         neo/mficon "less" 0.8 -0.1 neo/dyellow)
    ("\\.postcss$"      neo/fileicon "postcss" nil -0.1 neo/dred)
    ("\\.sss$"          neo/fileicon "postcss" nil -0.1 neo/dred)
    ("\\.styl$"         neo/devicon "stylus" nil -0.1 neo/lgreen)
    ("stylelint"        neo/fileicon "stylelint" nil -0.1 neo/lyellow)
    ("\\.csv$"          neo/octicon "graph" nil 0.0 neo/dblue)

    ("\\.hs$"           neo/devicon "haskell" 1.3 -0.1 neo/red)

    ;; Web modes
    ("\\.haml$"         neo/fileicon "haml" nil -0.1 neo/lyellow)
    ("\\.html?$"        neo/devicon "html5" nil nil neo/orange)
    ("\\.erb$"          neo/devicon "html5" nil -0.1 neo/lred)
    ("\\.slim$"         neo/octicon "dashboard" nil 0.0 neo/yellow)
    ("\\.jade$"         neo/fileicon "jade" nil nil neo/red)
    ("\\.pug$"          neo/fileicon "pug" nil nil neo/red)

    ;; JavaScript
    ("^gulpfile"        neo/devicon "gulp" 1.0 -0.1 neo/lred)
    ("^gruntfile"       neo/fileicon "grunt" 1.0 -0.1 neo/lyellow)

    ("\\.d3\\.?js"      neo/mficon "d3" 0.8 nil neo/lgreen)
    
    ("\\.react"         neo/devicon "react" 1.1 -0.1 neo/lblue)
    ("\\.js$"           neo/mficon "javascript" 0.9 -0.1 neo/yellow)
    ("\\.es[0-9]$"      neo/mficon "javascript" 0.9 -0.1 neo/yellow)
    ("\\.jsx$"          neo/fileicon "jsx" 0.8 -0.1 neo/lyellow)
    ("\\.njs$"          neo/devicon "nodejs-small" 1.2 -0.1 neo/lgreen)

    ;; File Types
    ("\\.ico$"          neo/octicon "file-media" nil 0.0 neo/orange)
    ("\\.png$"          neo/octicon "file-media" nil 0.0 neo/blue)
    ("\\.gif$"          neo/octicon "file-media" nil 0.0 neo/green)
    ("\\.jpe?g$"        neo/octicon "file-media" nil 0.0 neo/dblue)
    ("\\.svg$"          neo/mficon "svg" 0.9 nil neo/lgreen)

    ;; Video
    ("\\.mov"           neo/faicon "film" nil nil neo/blue)
    ("\\.mp4"           neo/faicon "film" nil nil neo/blue)
    ("\\.ogv"           neo/faicon "film" nil nil neo/dblue)

    ;; Fonts
    ("\\.ttf$"          neo/octicon "pencil" nil 0.0 neo/dcyan)
    ("\\.woff2?$"       neo/octicon "pencil" nil 0.0 neo/cyan)

    ;; Doc
    ("\\.pdf"           neo/octicon "file-pdf" nil 0.0 neo/dred)
    ("\\.te?xt"         neo/octicon "file-text" nil 0.0 neo/cyan)
    ("\\.doc[xm]?$"     neo/fileicon "word" nil -0.1 neo/blue)
    ("\\.texi?$"        neo/fileicon "tex" nil nil neo/lred)
    ("\\.md$"           neo/octicon "markdown" nil 0.0 neo/lblue)
    ("\\.bib$"          neo/fileicon "bib" nil nil neo/maroon)
    ("\\.org$"          neo/fileicon "org" nil -0.1 neo/lgreen)

    ("\\.pp[st]$"       neo/fileicon "ppt" nil nil neo/orange)
    ("\\.pp[st]x$"      neo/fileicon "ppt" nil nil neo/red)
    ("\\.knt$"          neo/fileicon "presentation" nil nil neo/cyan)

    ("bookmark"         neo/octicon "bookmark" 0.8 0.0 neo/lpink)
    ("\\.cache$"        neo/octicon "database" 0.8 0.0 neo/green)

    ("^\\."             neo/octicon "gear" nil 0.0)
    ("."                neo/faicon "file-o" 0.8 nil neo/dsilver)))

(defvar neo/dir-icon-alist
  '(
    ("trash"            neo/faicon "trash-o" 1.2 -0.1)
    ("dropbox"          neo/faicon "dropbox" 1.2 -0.1)
    ("google[ _-]drive" neo/devicon "google-drive" 1.3 -0.1)
    ("atom"             neo/devicon "atom" 1.2 -0.1)
    ("documents"        neo/faicon "book" 1.2 -0.1)
    ("download"         neo/octicon "cloud-download" 1.2 -0.1)
    ("desktop"          neo/faicon "desktop" 1.2 -0.1)
    ("pictures"         neo/faicon "picture-o" 1.2 -0.1)
    ("photos"           neo/faicon "retor-camera" 1.2 -0.1)
    ("music"            neo/faicon "headphones" 1.2 -0.1)
    ("movies"           neo/faicon "video-camera" 1.2 -0.1)
    ("code"             neo/octicon "code" 1.2 -0.1)
    ("workspace"        neo/octicon "code" 1.2 -0.1)
    ("."                neo/octicon "file-directory" 1.2)
    ))

(defvar neo/mode-icon-alist
  '(
    (emacs-lisp-mode neo/fileicon "elisp" nil -0.1)
    (dired-mode neo/octicon "file-directory" nil 0.0)
    (lisp-interaction-mode neo/fileicon "lisp" nil -0.1)
    (js2-mode neo/devicon "javascript-badge" nil -0.1)
    (term-mode neo/octicon "terminal")
    (eshell-mode neo/octicon "terminal")
    ))

(defun neo/match-to-alist (file alist)
  (cdr (or (--first (string-match (car it) file) alist)
           (neo/faicon "file-o" 0.8))))

;; Icon functions
(defun neo-icon-for-dir (file chevron)
  (let* ((matcher (neo/match-to-alist (file-name-base file) neo/dir-icon-alist))
         (file-path (expand-file-name file))
         (icon (if (file-exists-p (format "%s/.git" file-path))
                   (neo/octicon "repo" 1.2)
                 (apply (car matcher) (cdr matcher)))))
    (format "\t%s %s " (neo/octicon (format "chevron-%s" chevron)) icon)))

(defun neo-icon-for-file (file)
  (let ((icon (neo/match-to-alist file neo/icon-alist)))
    (apply (car icon) (cdr icon))))

(defun neo-icon-for-mode (mode)
  (let ((icon (cdr (assoc mode neo/mode-icon-alist))))
    (if icon (apply (car icon) (cdr icon)) mode)))

(defun neo-icon-for-buffer ()
  (if (buffer-file-name)
      (neo-icon-for-file (file-name-nondirectory (buffer-file-name)))
      (neo-icon-for-mode major-mode)))

;; Family Face Functions
(defun neo-icon-family-for-file (file)
   (let ((icon (neo/match-to-alist file neo/icon-alist)))
     (funcall (intern (format "%s-family" (car icon))))))

(defun neo-icon-family-for-mode (mode)
   (let ((icon (cdr (assoc mode neo/mode-icon-alist))))
     (if icon (funcall (intern (format "%s-family" (car icon)))) nil)))

(defun neo-icon-family-for-buffer ()
  (if (buffer-file-name)
      (neo-icon-family-for-file (file-name-nondirectory (buffer-file-name)))
      (neo-icon-family-for-mode major-mode)))

;; Definitions

(defun neo//function-name (name)
  (intern (concat "neo/" (downcase (symbol-name name)))))

(defun neo//family-name (name)
  (intern (concat "neo/" (downcase (symbol-name name)) "-family")))

(defmacro deficon (name alist family)
  `(prog1
       (defun ,(neo//family-name name) () ,family);
       (defun ,(neo//function-name name) (icon-name &optional height v-adjust col)
         (let ((icon (cdr (assoc icon-name ,alist)))
               (col (or (and neo/color-icons (symbol-value col))
                        (face-attribute 'default :foreground)))
               (height  (* neo/scale-factor (or height 1.0)))
               (v-adjust (* neo/scale-factor (or v-adjust -0.1)))
               (family ,family))
           (propertize icon
                       'face `(:family ,family :height ,height :foreground ,col :icon ,icon-name)
                       'display `(raise ,v-adjust))))))

(deficon mficon mficons-alist     "dev-icons" )
(deficon octicon octicons-alist   "github-octicons")
(deficon devicon devicons-alist   "iconmoon")
(deficon fileicon file-icon-alist "file-icons")
(deficon faicon fa-icon-alist     "FontAwesome")

(provide 'neo-mode-icons)

;;; neo-mode-icons.el ends here
