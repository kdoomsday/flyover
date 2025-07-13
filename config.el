;; Enable globally
(add-hook 'flycheck-mode-hook #'flyover-mode)

;; Configure which error levels to display
;; Possible values: error, warning, info
(setq flyover-levels '(error warning info))  ; Show all levels

;; Use theme colors for error/warning/info faces
(setq flyover-use-theme-colors t)

;; Adjust background lightness (lower values = darker)
(setq flyover-background-lightness 45)

;; Make icon background darker than foreground
(setq flyover-percent-darker 40)

(setq flyover-text-tint 'lighter) ;; or 'darker or nil

;; "Percentage to lighten or darken the text when tinting is enabled."
(setq flyover-text-tint-percent 50)

;; Connector to messages
;; (setq flyover-virtual-line-icon "— ") ;;; default its nil
(setq flyover-virtual-line-icon "╰—→") ;;; default its nil

;; Setting this to t would show the message at end of line instead of below
;; In that case I would recommend changing to something like
;; (setq flyover-virtual-line-icon "→ ") ;;; default its nil
(setq flyover-show-at-eol nil)

;; Hide when the cursor is in the same line. Seems a bit buggy
;; as it doesn't really auto-update. It works on the line, if
;; you enable the mode while on the line. That's it.
;; The 'at' version is supposed to work the same, but when you are in both
;; the same line and position of the error
(setq flyover-hide-when-cursor-is-on-same-line nil)
(setq flyover-hide-when-cursor-is-at-same-line nil)
