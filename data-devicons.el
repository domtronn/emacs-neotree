(defvar devicons-alist
  '(
    ( "git". "\xe602" )
    ( "git-compare". "\xe628" )
    ( "git-branch". "\xe625" )
    ( "git-commit". "\xe629" )
    ( "git-pull-request". "\xe626" )
    ( "git-merge". "\xe627" )
    ( "bitbucket". "\xe603" )
    ( "github-alt". "\xe608" )
    ( "github-badge". "\xe609" )
    ( "github". "\xe60a" )
    ( "github-full". "\xe617" )
    ( "java". "\xe638" )
    ( "ruby". "\xe639" )
    ( "scala". "\xe637" )
    ( "python". "\xe63c" )
    ( "go". "\xe624" )
    ( "ruby-on-rails". "\xe63b" )
    ( "django". "\xe61d" )
    ( "markdown". "\xe63e" )
    ( "php". "\xe63d" )
    ( "mysql". "\xe604" )
    ( "streamline". "\xe605" )
    ( "database". "\xe606" )
    ( "laravel". "\xe63f" )
    ( "javascript". "\xe64e" )
    ( "angular". "\xe653" )
    ( "backbone". "\xe652" )
    ( "coffeescript". "\xe651" )
    ( "jquery". "\xe650" )
    ( "modernizr". "\xe620" )
    ( "jquery-ui". "\xe654" )
    ( "ember". "\xe61b" )
    ( "dojo". "\xe61c" )
    ( "nodejs". "\xe619" )
    ( "nodejs-small". "\xe618" )
    ( "javascript-shield". "\xe64f" )
    ( "bootstrap". "\xe647" )
    ( "sass". "\xe64b" )
    ( "css3-full". "\xe64a" )
    ( "css3". "\xe649" )
    ( "html5". "\xe636" )
    ( "html5-multimedia". "\xe632" )
    ( "html5-device-access". "\xe633" )
    ( "html5-3d-effects". "\xe635" )
    ( "html5-connectivity". "\xe634" )
    ( "ghost-small". "\xe614" )
    ( "ghost". "\xe61f" )
    ( "magento". "\xe640" )
    ( "joomla". "\xe641" )
    ( "jekyll-small". "\xe60d" )
    ( "drupal". "\xe642" )
    ( "wordpress". "\xe60b" )
    ( "grunt". "\xe64c" )
    ( "grunt-alt". "\xe611" )
    ( "bower". "\xe64d" )
    ( "npm". "\xe61e" )
    ( "yahoo-small". "\xe62b" )
    ( "yahoo". "\xe615" )
    ( "bing-small". "\xe600" )
    ( "windows". "\xe60f" )
    ( "linux". "\xe612" )
    ( "ubuntu". "\xe63a" )
    ( "android". "\xe60e" )
    ( "apple". "\xe611" )
    ( "appstore". "\xe613" )
    ( "phonegap". "\xe630" )
    ( "blackberry". "\xe623" )
    ( "stackoverflow". "\xe610" )
    ( "techcrunch". "\xe62c" )
    ( "codrops". "\xe62f" )
    ( "css-tricks". "\xe601" )
    ( "smashing-magazine". "\xe62d" )
    ( "netmagazine". "\xe62e" )
    ( "codepen". "\xe616" )
    ( "cssdeck". "\xe62a" )
    ( "hackernews". "\xe61a" )
    ( "dropbox". "\xe607" )
    ( "google-drive". "\xe631" )
    ( "visualstudio". "\xe60c" )
    ( "unity-small". "\xe621" )
    ( "rasberry-pi". "\xe622" )
    ( "chrome". "\xe643" )
    ( "ie". "\xe644" )
    ( "firefox". "\xe645" )
    ( "opera". "\xe646" )
    ( "safari". "\xe648" )
    ( "swift". "\xe655" )
    ( "symfony". "\xe656" )
    ( "symfony-badge". "\xe657" )
    ( "less". "\xe658" )
    ( "stylus". "\xe659" )
    ( "trello". "\xe65a" )
    ( "atlassian". "\xe65b" )
    ( "jira". "\xe65c" )
    ( "envato". "\xe65d" )
    ( "snap-svg". "\xe65e" )
    ( "raphael". "\xe65f" )
    ( "google-analytics". "\xe660" )
    ( "compass". "\xe661" )
    ( "onedrive". "\xe662" )
    ( "gulp". "\xe663" )
    ( "atom". "\xe664" )
    ( "cisco". "\xe665" )
    ( "nancy". "\xe666" )
    ( "clojure". "\xe668" )
    ( "clojure-alt". "\xe66a" )
    ( "perl". "\xe669" )
    ( "celluloid". "\xe66b" )
    ( "w3c". "\xe66c" )
    ( "redis". "\xe66d" )
    ( "postgresql". "\xe66e" )
    ( "webplatform". "\xe66f" )
    ( "jenkins". "\xe667" )
    ( "requirejs". "\xe670" )
    ( "opensource". "\xe671" )
    ( "typo3". "\xe672" )
    ( "uikit". "\xe673" )
    ( "doctrine". "\xe674" )
    ( "docker". "\xe6b0" )
    ( "groovy". "\xe675" )
    ( "nginx". "\xe676" )
    ( "haskell". "\xe677" )
    ( "zend". "\xe678" )
    ( "gnu". "\xe679" )
    ( "yeoman". "\xe67a" )
    ( "heroku". "\xe67b" )
    ( "debian". "\xe67d" )
    ( "travis". "\xe67e" )
    ( "dotnet". "\xe67f" )
    ( "codeigniter". "\xe680" )
    ( "javascript-badge". "\xe681" )
    ( "yii". "\xe682" )
    ( "msql-server". "\xe67c" )
    ( "composer". "\xe683" )
    ( "krakenjs-badge". "\xe684" )
    ( "krakenjs". "\xe685" )
    ( "mozilla". "\xe686" )
    ( "firebase". "\xe687" )
    ( "sizzlejs". "\xe688" )
    ( "creativecommons". "\xe689" )
    ( "creativecommons-badge". "\xe68a" )
    ( "mitlicence". "\xe68b" )
    ( "senchatouch". "\xe68c" )
    ( "bugsense". "\xe68d" )
    ( "extjs". "\xe68e" )
    ( "mootools-badge". "\xe68f" )
    ( "mootools". "\xe690" )
    ( "ruby-rough". "\xe691" )
    ( "komodo". "\xe692" )
    ( "coda". "\xe693" )
    ( "bintray". "\xe694" )
    ( "terminal". "\xe695" )
    ( "code". "\xe696" )
    ( "responsive". "\xe697" )
    ( "dart". "\xe698" )
    ( "aptana". "\xe699" )
    ( "mailchimp". "\xe69a" )
    ( "netbeans". "\xe69b" )
    ( "dreamweaver". "\xe69c" )
    ( "brackets". "\xe69d" )
    ( "eclipse". "\xe69e" )
    ( "cloud9". "\xe69f" )
    ( "scrum". "\xe6a0" )
    ( "prolog". "\xe6a1" )
    ( "terminal-badge". "\xe6a2" )
    ( "code-badge". "\xe6a3" )
    ( "mongodb". "\xe6a4" )
    ( "meteor". "\xe6a5" )
    ( "meteorfull". "\xe6a6" )
    ( "fsharp". "\xe6a7" )
    ( "rust". "\xe6a8" )
    ( "react". "\xe6ba" )
    ( "ionic". "\xe6a9" )
    ( "sublime". "\xe6aa" )
    ))

(provide 'data-devicons)
