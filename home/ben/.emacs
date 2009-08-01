;;highlight mark
(setq transient-mark-mode t)

;; make emacs use the clipboard
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; no splash screen
(setq inhibit-splash-screen t)

;; Change title bar to reverse file path if the current buffer is a
;; real file or buffer name if it is just a buffer.
(setq frame-title-format 
     '(:eval 
        (if buffer-file-name 
            (replace-regexp-in-string 
             (getenv "HOME") "~"
              (mapconcat (function format) 
                         (reverse (split-string buffer-file-name "/")) 
                         "/"))
         (buffer-name))))

;; remove toolbar
(tool-bar-mode -1)

;; turn off the annoying alarm bell
(setq ring-bell-function 'ignore)

;; Make scripts executable on Save (saves having to do the chmod every time)
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; remove scrollbar
(scroll-bar-mode -1)
