(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(require 'better-defaults)
(require 'key-chord)

(cask-initialize)
(evil-mode 1)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

