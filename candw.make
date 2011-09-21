core = 7.x
api = 2

; Contrib
projects[views][subdir] = "contrib"
projects[views][version] = "3.0-rc1"
;projects[] = pathauto
;projects[] = admin
;projects[] = features
;projects[] = captcha
projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.0-rc1" 
projects[fbconnect][subdir] = "contrib"
projects[fbconnect][version] = "2.x-dev"
;projects[strongarm][subdir] = "contrib"
;projects[strongarm][version] = "2.0-beta2"

; Custom
projects[high_contrast][type] = "module"
projects[high_contrast][download][type] = "git"
projects[high_contrast][download][url] = "git@github.com:acontia/High-contrast.git"
projects[high_contrast][download][branch] = "master"
projects[high_contrast][subdir] = "custom"

; Libraries
;libraries[facebook-php-sdk][download][type] = "git"
;libraries[facebook-php-sdk][download][url] = "https://github.com/facebook/php-sdk.git"
;libraries[facebook-php-sdk][download][tag] = "v2.1.1"
;libraries[facebook-php-sdk][directory_name] = "facebook-php-sdk"
;libraries[facebook-php-sdk][destination] = "modules/contrib/fbconnect"

libraries[facebook][download][type] = "get"
libraries[facebook][download][url] = "http://github.com/facebook/php-sdk/tarball/v2.1.2"
;libraries[facebook-php-sdk][destination] = "modules/contrib/fbconnect"

; Features
;projects[c_w_blog][type] = "module"
;projects[c_w_blog][download][type] = "git"
;projects[c_w_blog][download][url] = "git@github.com:edwardcrompton/c_w_blog.git"
;projects[c_w_blog][download][branch] = "master"
;projects[c_w_blog][subdir] = "custom"
