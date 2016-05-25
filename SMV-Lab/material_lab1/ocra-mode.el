
(require 'font-lock) ; needed for coloration

(defgroup ocra-custom-group-colors nil
   "OCRA coloration.")

;; define font faces to be used
(defface ocra-font-lock-pink-face
      '((t (:foreground "deeppink")))
      "pink"
      :group 'ocra-custom-group-colors)

(defface ocra-font-lock-bold-face
      '((t (:foreground "blue" :weight bold)))
      "bold"
      :group 'ocra-custom-group-colors)

(defface ocra-font-lock-underlined-face
      '((t (:underline t)))
      "underlined"
      :group 'ocra-custom-group-colors)

(defconst ocra-othello-keywords
  '("always" "change" "der" "historically" "in the future" 
    "in the past" "never" "next"  "previously" "releases" 
    "since" "then" "time_until" "triggered" "until"
    "at next" "at last")
  "keywords of othello language used in contracts")

(defconst ocra-boolean-opts
  '("and" "iff" "implies" "not" "or"))

(defconst ocra-types-keywords
  '("boolean" "continuous" "event" "integer" "real")
  "OCRA types for ports and parameters")

(defconst ocra-constants-keywords
  '("true" "TRUE" "false" "FALSE"))

(defconst ocra-keywords-1
  '("COMPONENT" "system"))  ;;  "DEFINE"

(defconst ocra-keywords-2
  '( "CONNECTION" "CONSTRAINT" "PORT" "INPUT" "OUTPUT" "PARAMETER" "SUB" 
    "OPERATION" "PROVIDED" "REQUIRED"))

(defconst ocra-keywords-3
  '("REFINEMENT" "ASYNC REFINEMENT" "INTERFACE"))

(defconst ocra-keywords-4
  '("CONTRACT" "REFINEDBY" "assume" "guarantee"))

(defconst ocra-precompiler-keywords 
  '("#include" "#define" "@requires"))

(defconst ocra-requires-keywords
  '("discrete-time" "hybrid-time"))

(defconst ocra-operators-keywords
  '(":=" "=" "+" "-" "<" ">" "-" "*" "&" "|" "!" "?" "/"))

(defconst ocra-ltl-operators-keywords
  '("G" "F" "S" "Y" "U" "X" "R"))

(defconst ocra-font-lock-defaults
  `((
       ( ,(concat "\\<" (regexp-opt ocra-othello-keywords t) "\\>") . font-lock-keyword-face)
       ( ,(concat "\\<" (regexp-opt ocra-types-keywords t) "\\>") . font-lock-type-face)
       ( ,(concat "\\<" (regexp-opt ocra-constants-keywords t) "\\>") . font-lock-constant-face)
       ( "\\([0-9]+[ ]*[..]+[ ]*[0-9]+\\)" . font-lock-type-face)
       ( "\\({.*}\\)" . font-lock-type-face)
       ( "\\<\\([0-9]*\\)\\>" . font-lock-constant-face)
       ( ,(concat "\\<" (regexp-opt ocra-keywords-1 t) "\\>") . 'ocra-font-lock-bold-face)
       ( ,(concat "\\<" (regexp-opt ocra-keywords-2 t) "\\>") . font-lock-function-name-face)
       ( ,(concat "\\<" (regexp-opt ocra-keywords-3 t) "\\>") . 'ocra-font-lock-underlined-face)       
       ( ,(concat "\\<" (regexp-opt ocra-keywords-4 t) "\\>") . font-lock-string-face)       
       ( ,(regexp-opt ocra-precompiler-keywords t) . 'ocra-font-lock-pink-face)       
       ( ,(regexp-opt ocra-requires-keywords t) . font-lock-preprocessor-face)       
       ( ,(regexp-opt ocra-operators-keywords t) . font-lock-keyword-face)     
       ( ,(concat "\\<" (regexp-opt ocra-boolean-opts t) "\\>") . font-lock-keyword-face)     
       ( ,(concat "\\<" (regexp-opt ocra-ltl-operators-keywords t) "\\>") . font-lock-keyword-face)
       )))


;; define the mode
(define-derived-mode ocra-mode fundamental-mode "OCRA"
    "ocra-mode is a major mode for editing OCRA files"

    (setq font-lock-defaults ocra-font-lock-defaults)

    ;; comments specs
    (setq comment-start "--")
    ;; removed below line to avoid args out of
    ;; range erron in commenting with comment-region
    ;;(setq comment-end "\n")
  
    ;; 12b stays for: first and second character has to be '-'
    ;; this makes comments highlighting in the whole line
    (modify-syntax-entry ?- ". 12b" ocra-mode-syntax-table)
    (modify-syntax-entry ?\n "> b" ocra-mode-syntax-table)

    ;; read a name_like_this as one word
    (modify-syntax-entry ?_ "w" ocra-mode-syntax-table)
)

(auto-insert-mode 1)
;;;###autoload
(add-to-list 'auto-mode-alist '("\\.oss\\'" . ocra-mode))
  
(provide 'ocra-mode)
