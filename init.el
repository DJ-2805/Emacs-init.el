(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (htmlize org org-plus-contrib ox-reveal zenburn-theme yasnippet which-key use-package try tabbar org-bullets iedit hungry-delete flycheck expand-region counsel avy auto-complete android-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-variables

 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)))))

;;Tool Bar Removal


;;Package website
;;and pakcage tools
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

