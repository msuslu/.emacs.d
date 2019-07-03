;; web-mode configuration for HTML, CSS, JS editing

(use-package web-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.etlua?\\'" . web-mode))
  (setq web-mode-enable-engine-detection t))

(provide 'setup-web)
