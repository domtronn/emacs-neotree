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
    ("\\.tags"          neo/octicon "tag" 1.0 nil neo/blue)
    ("^TAGS$"           neo/octicon "tag" 1.0 nil neo/blue)
    ("\\.log"           neo/octicon "bug" 1.0 nil neo/maroon)

    ;;
    ("\\.key$"          neo/octicon "key" nil nil neo/lblue)
    ("\\.pem$"          neo/octicon "key" nil nil neo/orange)
    ("\\.p12$"          neo/octicon "key" nil nil neo/dorange)
    ("\\.crt$"          neo/octicon "key" nil nil neo/lblue)
    ("\\.pub$"          neo/octicon "key" nil nil neo/blue)

    ("^TODO$"           neo/octicon "checklist" nil nil neo/lyellow)
    ("^LICENSE$"        neo/octicon "book" 1.0 nil neo/blue)
    ("^readme"          neo/octicon "book" 1.0 nil neo/lcyan)

    ("-?spec\\."          neo/faicon "flask" 1.0 nil neo/dgreen)
    ("-?test\\."         neo/faicon "flask" 1.0 nil neo/dgreen)

    ("\\.fish" neo/devicon "terminal" nil nil neo/lpink)
    ("\\.zsh" neo/devicon "terminal" nil nil neo/lcyan)
    
    ;; Config
    ("\\.node"          neo/devicon "nodejs-small" 1.0 nil neo/green)
    ("\\.babelrc$"      neo/fileicon "babel" nil nil neo/yellow)
    ("\\.bashrc$"       neo/devicon "terminal" 1.2 nil neo/dpink)
    ("\\.bowerrc$"      neo/devicon "bower" 1.2 -0.2 neo/silver)
    ("^bower.json$"     neo/devicon "bower" 1.2 -0.2 neo/lorange)
    ("\\.ini$"          neo/octicon "settings" nil nil neo/yellow)
    ("\\.eslintignore"  neo/fileicon "eslint" 0.8 -0.1 neo/purple)
    ("\\.eslint"        neo/fileicon "eslint" 0.8 -0.1 neo/lpurple)
    ("\\.git"           neo/octicon "git-pull-request" 1.0 nil neo/lred)
    ("nginx"            neo/fileicon "nginx" 0.9 -0.1 neo/dgreen)

    ("\\.dockerignore$" neo/fileicon "docker" 1.2 -0.1 neo/dblue)
    ("^Dockerfile"      neo/fileicon "docker" nil nil neo/blue)
    ("^Brewfile$"       neo/faicon "beer" nil nil neo/lsilver)
    ("\\.npmignore"     neo/fileicon "npm" nil nil neo/dred)
    ("^package.json$"   neo/fileicon "npm" nil -0.2 neo/red)

    ("\\.[jc]son$"      neo/octicon "settings" nil nil neo/yellow)
    ("\\.yml$"          neo/octicon "settings" nil nil neo/dyellow)

    ("\\.pkg$"          neo/octicon "package" nil nil neo/dsilver)
    ("\\.rpm$"          neo/octicon "package" nil nil neo/dsilver)

    ("\\.elc$" neo/octicon "file-binary" nil nil neo/dsilver)

    ("\\.zip$" neo/octicon "file-zip" nil nil neo/lmaroon)
    ("\\.7z$" neo/octicon "file-zip" nil nil neo/lmaroon)


    ;; lock files
    ("~$" neo/octicon "lock" nil nil neo/maroon)

    ("\\.dmg$"          neo/octicon "tools" nil nil neo/lsilver)
    ("\\.dll$"          neo/faicon "cogs" nil nil neo/silver)
    ("\\.DS_STORE$"          neo/faicon "cogs" nil nil neo/silver)

    ;; Source Codes
    ("\\.scpt$"         neo/fileicon "apple" nil nil neo/pink)
    ("\\.aup$"          neo/fileicon "audacity" nil nil neo/yellow)

    ("\\.java$"         neo/devicon "java" 1.2 -0.1 neo/purple)

    ("\\.mp3$"          neo/faicon "volume-up" nil nil neo/dred)
    ("\\.wav$"          neo/faicon "volume-up" nil nil neo/dred)
    ("\\.m4a$"          neo/faicon "volume-up" nil nil neo/dred)

    ("\\.jl$"           neo/fileicon "julia" nil nil neo/purple)
    ("\\.matlab$"       neo/fileicon "matlab" nil nil neo/orange) 

    ("\\.pl$"           neo/mficon "perl" nil nil neo/lorange)
    ("\\.pl6$"          neo/fileicon "perl6" nil nil neo/cyan)
    ("\\.pod$"          neo/devicon "perl" 1.2 -0.2 neo/lgreen)

    ("\\.php$"          neo/fileicon "php" nil -0.2 neo/lsilver)
    ("\\.pony$"         neo/fileicon "pony" nil -0.2 neo/maroon)
    ("\\.prol?o?g?$"    neo/devicon "prolog" 1.1 -0.2 neo/lmaroon)
    ("\\.py$"           neo/devicon "python" 1.3 -0.1 neo/dblue)

    ("\\.gem$"          neo/devicon "ruby-rough" nil nil neo/red)
    ("\\.rb$"           neo/octicon "ruby" nil nil neo/lred)
    ("\\.rs$"           neo/devicon "rust" 1.4 -0.2 neo/maroon)
    ("\\.rlib$"         neo/devicon "rust" 1.4 -0.2 neo/dmaroon)
    ("\\.r[ds]?x?$"     neo/fileicon "R" nil nil neo/lblue)

    ("\\.scala$"        neo/mficon "scala" nil -0.1 neo/red)

    ("\\.swift$"        neo/devicon "swift" 1.2 -0.2 neo/green)
    
    ;; There seems to be a a bug with this font icon which does not
    ;; let you propertise it without it reverting to being a lower
    ;; case phi
    ("\\.c$"            neo/mficon "c" nil nil )
    ("\\.h$"            neo/mficon "c" nil nil )

    ("\\.cpp$"          neo/mficon "cplusplus" nil -0.2 neo/blue)
    ("\\.hpp$"          neo/mficon "cplusplus" nil -0.2 neo/purple)

    ("\\.csx?$"         neo/mficon "csharp" nil -0.1 neo/dblue)

    ("\\.clj$"          neo/devicon "clojure" 1.2 -0.2 neo/blue)

    ("\\.coffee$"       neo/devicon "coffeescript" 1.2 -0.1 neo/maroon)
    ("\\.iced$"         neo/devicon "coffeescript" 1.2 -0.1 neo/lmaroon)

    ;; Git
    ("^MERGE_"          neo/octicon "git-merge" nil nil neo/red)
    ("^COMMIT_EDITMSG"  neo/octicon "git-commit" nil nil neo/red)

    ;; Lisps
    ("\\.cl$"           neo/fileicon "clisp" nil nil neo/lorange)
    ("\\.l$"            neo/fileicon "lisp" nil nil neo/orange)
    ("\\.el$"           neo/fileicon "elisp" 0.8 nil neo/purple)

    ;; Stylesheeting
    ("\\.css$"          neo/devicon "css3-full" nil nil neo/yellow)
    ("\\.scss$"         neo/devicon "sass" nil nil neo/pink)
    ("\\.sass$"         neo/devicon "sass" nil nil neo/dpink)
    ("\\.less$"         neo/devicon "less" 1.4 -0.2 neo/dyellow)
    ("\\.postcss$"      neo/fileicon "postcss" nil -0.2 neo/dred)
    ("\\.sss$"          neo/fileicon "postcss" nil -0.2 neo/dred)
    ("\\.styl$"         neo/devicon "stylus" nil -0.1 neo/lgreen)
    ("stylelint"        neo/fileicon "stylelint" nil -0.2 neo/lyellow)
    ("\\.csv$"          neo/octicon "graph" nil nil neo/dblue)

    ("\\.hs$"           neo/devicon "haskell" 1.3 -0.1 neo/red)

    ;; Web modes
    ("\\.haml$"         neo/fileicon "haml" nil nil neo/lyellow)
    ("\\.html?$"        neo/devicon "html5" nil nil neo/orange)
    ("\\.erb$"          neo/devicon "html5" nil nil neo/lred)
    ("\\.slim$"         neo/octicon "dashboard" nil nil neo/yellow)
    ("\\.jade$"         neo/fileicon "jade" nil nil neo/red)
    ("\\.pug$"          neo/fileicon "pug" nil nil neo/red)

    ;; JavaScript
    ("^gulpfile"        neo/devicon "gulp" 1.0 nil neo/lred)
    ("^gruntfile"       neo/devicon "grunt" 1.2 -0.1 neo/lyellow)

    ("\\.react"         neo/devicon "react" 1.1 -0.1 neo/lblue)
    ("\\.js$"           neo/devicon "javascript-badge" 0.8 nil neo/yellow)
    ("\\.es[0-9]$"      neo/devicon "javascript-badge" 0.8 nil neo/yellow)
    ("\\.jsx$"          neo/fileicon "jsx" 0.8 -0.1 neo/lyellow)
    ("\\.njs$"          neo/devicon "nodejs-small" 1.2 -0.2 neo/lgreen)

    ;; File Types
    ("\\.ico$"          neo/octicon "file-media" nil nil neo/orange)
    ("\\.png$"          neo/octicon "file-media" nil nil neo/blue)
    ("\\.gif$"          neo/octicon "file-media" nil nil neo/green)
    ("\\.jpe?g$"        neo/octicon "file-media" nil nil neo/dblue)
    ("\\.svg$"          neo/mficon "svg" nil nil neo/lgreen)

    ;; Video
    ("\\.mov"           neo/faicon "film" nil nil neo/blue)
    ("\\.mp4"           neo/faicon "film" nil nil neo/blue)
    ("\\.ogv"           neo/faicon "film" nil nil neo/dblue)

    ;; Fonts
    ("\\.ttf$" neo/octicon "pencil" nil nil neo/dcyan)
    ("\\.woff2?$" neo/octicon "pencil" nil nil neo/cyan)

    ;; Doc
    ("\\.pdf"           neo/octicon "file-pdf" nil nil neo/dred)
    ("\\.te?xt"         neo/octicon "file-text" nil nil neo/cyan)
    ("\\.doc[xm]?$"     neo/fileicon "word" nil nil neo/blue)
    ("\\.texi?$"        neo/fileicon "tex" nil nil neo/lred)
    ("\\.md$"           neo/octicon "markdown" nil nil neo/lblue)
    ("\\.bib$"          neo/fileicon "bib" nil nil neo/maroon)
    ("\\.org$"          neo/fileicon "org" nil nil neo/lgreen)

    ("\\.pp[st]$"     neo/fileicon "ppt" nil nil neo/orange)
    ("\\.pp[st]x$"     neo/fileicon "ppt" nil nil neo/red)
    ("\\.knt$"          neo/fileicon "presentation" nil nil neo/cyan)

    ("bookmark"          neo/octicon "bookmark" 1.0 nil neo/lpink)
    ("\\.cache$"         neo/octicon "database" 1.0 nil neo/green)

    ("^\\."              neo/octicon "gear")
    ("."              neo/faicon "file-o" 0.8 nil neo/dsilver)))

(defvar neo/dir-icon-alist
  '(
    ("trash" neo/faicon "trash-o" 1.2 -0.1)
    ("dropbox" neo/faicon "dropbox" 1.2 -0.1)
    ("google[ _-]drive" neo/devicon "google-drive" 1.3 -0.1)
    ("atom" neo/devicon "atom" 1.2 -0.1)
    ("documents" neo/faicon "book" 1.2 -0.1)
    ("download" neo/octicon "cloud-download" 1.2 -0.1)
    ("desktop" neo/faicon "desktop" 1.2 -0.1)
    ("pictures" neo/faicon "picture-o" 1.2 -0.1)
    ("photos" neo/faicon "retor-camera" 1.2 -0.1)
    ("music" neo/faicon "headphones" 1.2 -0.1)
    ("movies" neo/faicon "video-camera" 1.2 -0.1)
    ("code" neo/octicon "code" 1.2 -0.1)
    ("workspace" neo/octicon "code" 1.2 -0.1)
    ("." neo/octicon "file-directory" 1.2)
    ))

(defun neo/match-file-to-alist (file alist)
  (cdr (or (--first (string-match (car it) file) alist)
           (neo/faicon "file-o" 0.8))))

(defun neo-mode-icon-for-dir (file chevron)
  (let* ((matcher (neo/match-file-to-alist (file-name-base file) neo/dir-icon-alist))
         (file-path (expand-file-name file))
         (icon (if (file-exists-p (format "%s/.git" file-path))
                   (neo/octicon "repo" 1.2)
                 (apply (car matcher) (cdr matcher)))))
    (format "\t%s %s " (neo/octicon (format "chevron-%s" chevron)) icon)))

(defun neo-mode-icon-for-file (file)
  (let ((icon (neo/match-file-to-alist file neo/icon-alist)))
    (apply (car icon) (cdr icon))))

(defun neo//function-name (name)
  (intern (concat "neo/" (downcase (symbol-name name)))))

(defmacro deficon (name alist family)
  `(prog1
       (defun ,(neo//function-name name) (icon &optional height v-adjust col)
         (let ((icon (cdr (assoc icon ,alist)))
               (col (or (and neo/color-icons (symbol-value col))
                        (face-attribute 'default :foreground)))
               (height  (* neo/scale-factor (or height 1.0)))
               (v-adjust (* neo/scale-factor (or v-adjust 0.0)))
               (family ,family))
           (propertize icon
                       'face `(:family ,family :height ,height :foreground ,col)
                       'display `(raise ,v-adjust))))))

(deficon mficon mficons-alist     "mfizz")
(deficon octicon octicons-alist   "github-octicons")
(deficon devicon devicons-alist   "iconmoon")
(deficon fileicon file-icon-alist "file-icons")
(deficon faicon fa-icon-alist     "FontAwesome")

(provide 'neo-mode-icons)

;;; neo-mode-icons.el ends here
