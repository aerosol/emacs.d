(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)

;; rel nums
(global-relative-line-numbers-mode)

;; richard's paintbrush skillz, you can go now
(setq inhibit-startup-screen t)

;; ido mode
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-case-fold nil
      ido-auto-merge-work-directories-length -1
      ido-create-new-buffer 'always
      ido-use-filename-at-point nil
      ido-max-prospects 10
      ido-everywhere t
      ido-use-faces nil)

(define-key ido-file-completion-map (kbd "C-w") 'ido-delete-backward-updir)

(ido-mode 1)
(ido-vertical-mode)

;; evil-mode
(evil-mode 1)

(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

(global-evil-leader-mode)
(evil-leader/set-leader ",")
(setq evil-leader/in-all-states 1)

(setq evil-default-cursor t)
(set-cursor-color "Red")

(define-key evil-normal-state-map "\C-j"  'evil-window-down)
(define-key evil-normal-state-map "\C-k"  'evil-window-up)
(define-key evil-normal-state-map "\C-h"  'evil-window-left)
(define-key evil-normal-state-map "\C-l"  'evil-window-right)

(setq evil-shift-width 2)
(setq evil-want-C-i-jump t)
(setq evil-want-C-u-scroll t)
(setq evil-complete-all-buffers nil)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)

(evil-leader/set-key
  "w" 'save-buffer
  "b" 'ido-switch-buffer
  "x" 'kill-buffer-and-window
  )

(define-key evil-normal-state-map (kbd "C-w -")
  (lambda ()
    (interactive)
    (split-window-vertically)
    (other-window 1)))
(define-key evil-normal-state-map (kbd "C-w |")
  (lambda ()
    (interactive)
    (split-window-horizontally)
    (other-window 1)))

;; general tyranny reductions
(setq visible-bell nil)
(setq ring-bell-function (lambda () (message "*beep*")))
(fset 'yes-or-no-p 'y-or-n-p)
(setq mac-command-modifier 'meta)
