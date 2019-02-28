(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :custom (evil-collection-company-use-tng nil)
  :after evil
  :ensure t
  :config
  (evil-collection-init))

;; (evil-define-key nil evil-normal-state-map
;;   "." 'gtags-find-tag-dwim
;;   "," 'pop-tag-mark)

;;https://emacs.stackexchange.com/questions/29684/evil-vs-slime-fight-for-m
(define-key evil-normal-state-map (kbd "M-.")
  `(menu-item "" evil-repeat-pop :filter
              ,(lambda (cmd) (if (eq last-command 'evil-repeat-pop) cmd))))

(provide 'setup-evil)
