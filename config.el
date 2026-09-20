(setq doom-theme 'modus-operandi)

(setq display-line-numbers-type t)

(setq org-directory "~/org/")

;; enable markdown exports
(after! org
  (add-to-list 'org-export-backends 'md))

;; enable org-modern
(use-package! org-modern
  :hook (org-mode . org-modern-mode))

;; always use org-modern
(add-hook 'org-mode-hook #'org-modern-mode)

;; load ox-gfm
(eval-after-load "org"
  '(require 'ox-gfm nil t))

(use-package! kql-mode)
(use-package! bicep-mode)

(add-to-list 'default-frame-alist '(width . 200))
(add-to-list 'default-frame-alist '(height . 60))

(setq-hook! '++doom-dashboard-mode-hook default-directory "~/")

;; use powershell instead of cmd on windows
(if (featurep :system 'windows)
  (setq ghostel-shell "pwsh"))
(after! org
  (setq org-babel-powershell-command "pwsh")
  (defvar org-babel-command:powershell "pwsh"))
