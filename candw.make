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
;projects[fbconnect][subdir] = "contrib"
;projects[fbconnect][version] = "2.x-dev"
;projects[strongarm][subdir] = "contrib"
;projects[strongarm][version] = "2.0-beta2"

; Contrib from git
projects[fbconnect][type] = "module"
projects[fbconnect][download][type] = "git"
projects[fbconnect][download][url] = "git://drupalcode.org/project/fbconnect.git"
projects[fbconnect][download][revision] = "af8c7de70a6aa2d9218a0d08db2160cc98bf4438"
projects[fbconnect][subdir] = "contrib"

; Custom
projects[high_contrast][type] = "module"
projects[high_contrast][download][type] = "git"
projects[high_contrast][download][url] = "git@github.com:acontia/High-contrast.git"
projects[high_contrast][subdir] = "custom"

; Libraries
libraries[facebook-php-sdk][download][type] = "get"
libraries[facebook-php-sdk][download][url] = "http://github.com/facebook/php-sdk/tarball/v2.1.2"
libraries[facebook-php-sdk][directory_name] = "facebook-php-sdk"
libraries[facebook-php-sdk][destination] = "modules/contrib/fbconnect"

; Features
;projects[c_w_blog][type] = "module"
;projects[c_w_blog][download][type] = "git"
;projects[c_w_blog][download][url] = "git@github.com:edwardcrompton/c_w_blog.git"
;projects[c_w_blog][download][branch] = "master"
;projects[c_w_blog][subdir] = "custom"
