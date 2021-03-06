;; init-elpa.el
;; (require 'use-package)
(require 'package)
;; 增加软件包仓库

(setq package-archives '(("elpa" . "https://elpa.emacs-china.org/gnu/")
                         ("melpa" . "https://elpa.emacs-china.org/melpa/")
                         ("melpa-stable" . "https://elpa.emacs-china.org/melpa-stable/")
                         ("org" . "https://elpa.emacs-china.org/org/")
                         ("emacswiki" . "https://elpa.emacs-china.org/emacswiki/")))
;; (setq package-archives '(("elpa" . "https://elpa.gnu.org/packages/")
;;                          ("melpa" . "http://melpa.milkbox.net/packages/")
;;                          ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
;;                          ("org" . "http://orgmode.org/elpa/")))

;; 定义 require-package 函数
;; (defun require-package (package &optional min-version no-refresh)
;;   "Install given PACKAGE, optionally requiring MIN-VERSION.
;; If NO-REFRESH is non-nil, the available package lists will not be
;; re-downloaded in order to locate PACKAGE."
;;   (if (package-installed-p package min-version)
;;       t
;;     (if (or (assoc package package-archive-contents) no-refresh)
;;         (package-install package)
;;       (progn
;;         (package-refresh-contents)
;;         (require-package package min-version t)))))
;; 强行提前初始化 ELPA。因为默认情况下 Emacs 在 init.el 加载完之后才开始初始化 ELPA，
;; 而我们把大多数包的初始化函数都放在 init.el 中，如果不提前初始化 ELPA 会导致后面的
;; 初始化过程出错（对应的包文件还没有加载进来）。
(package-initialize)
(provide 'init-elpa)
