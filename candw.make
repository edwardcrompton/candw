core = 7.x
api = 2

; Contrib
projects[views][subdir] = "contrib"
projects[views][version] = "3.0-rc1"
;projects[] = pathauto
;projects[] = admin
projects[] = features
projects[] = captcha
projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.0-rc1" 

; Features
projects[c_w_blog][type] = "module"
projects[c_w_blog][download][type] = "git"
projects[c_w_blog][download][url] = "git@github.com:edwardcrompton/c_w_blog.git"
projects[c_w_blog][download][branch] = "master"
