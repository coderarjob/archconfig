;; THIS FILE CONTAINS CUSTOM SETTINGS THAT ARE WRITTEN BY HAND.
;; THIS SEPARATES THE CODE THAT IS AUTO-GENERATED AND ONE WRITTED BY HAND.

;; enable column number mode
;; column and line numbers are shown in the bar below each frame.x
(column-number-mode)

;; Disables the default start-up screen.
(setq inhibit-startup-message t)

;; Highlight matching braces
(show-paren-mode t)

;; Enables global line numbers.
(global-linum-mode t)

;; Puts one space between the end of the line number and the contents of the buffer.
(setq linum-format "%d ")

;;Enable Development mode
(global-ede-mode 1)

;; Enable semantic mode
(semantic-mode 1)

;; Semantic
(global-semantic-idle-summary-mode 1)
(global-semantic-idle-completions-mode 1)
(global-semantic-decoration-mode 1)
(global-semantic-highlight-func-mode 1)
(global-semantic-show-unmatched-syntax-mode 1)

;; F5 to compile
(global-set-key (kbd "<f5>") 'compile)


;; Custom function - Insert a new line and move cursor there
(defun my/insert-new-line-below ()
  (interactive)
  (move-end-of-line 1)
  (newline)
  (move-beginning-of-line 1))

;; Assign the function to a key binding
;; C-o -> creates a new line above
;; C-S-o -> will creare a new line below
(global-set-key (kbd "C-S-o")
		'my/insert-new-line-below)

;; change of other style
;; Default value of c-default-style can be found in help.
(setq c-default-style (list (cons 'java-mode "java") (cons 'awk-mode "awk") (cons 'other "stroustrup")))

;; Enable auto-complete
;(global-auto-complete-mode 1)

;; The following function adds semantic to suggestion backend to
;; auto-complete. Then we assign this function to c-mode-common-hook
;;(defun my/add-semantic-to-autocomplete()
;;  (print "working with c-style languages")
;;  (add-to-list 'ac-sources 'ac-source-semantic))
;;(add-hook 'c-mode-common-hook 'my/add-semantic-to-autocomplete)
