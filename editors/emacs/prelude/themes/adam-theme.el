(deftheme adam "Better than everyone elses theme")

(let ((class '((class color) (min-colors 89)))
      ;; colors with +x are lighter, colors with -x are darker
      (adam-fg "black")
      (adam-fg-1 "#656555")
      (adam-bg-1 "#2b2b2b")
      (adam-bg-05 "#383838")
      (adam-bg "white")
      (adam-bg+1 "#4f4f4f")
      (adam-bg+2 "#5f5f5f")
      (adam-red+1 "#dca3a3")
      (adam-red "#cc9393")
      (adam-red-1 "#bc8383")
      (adam-red-2 "#ac7373")
      (adam-red-3 "#9c6363")
      (adam-red-4 "#8c5353")
      (adam-orange "#dfaf8f")
      (adam-yellow "#f0dfaf")
      (adam-yellow-1 "Yellow")
      (adam-yellow-2 "#d0bf8f")
      (adam-green-1 "#5f7f5f")
      (adam-green "#7f9f7f")
      (adam-green+1 "#8fb28f")
      (adam-green+2 "#9fc59f")
      (adam-green+3 "#afd8af")
      (adam-green+4 "#bfebbf")
      (adam-cyan "#93e0e3")
      (adam-blue+1 "#94bff3")
      (adam-blue "#8cd0d3")
      (adam-blue-1 "#7cb8bb")
      (adam-blue-2 "#6ca0a3")
      (adam-blue-3 "#5c888b")
      (adam-blue-4 "#4c7073")
      (adam-blue-5 "#366060")
      (adam-magenta "#dc8cc3"))
  (custom-theme-set-faces
   'adam
   '(button ((t (:underline t))))
   `(link ((,class (:foreground "Blue" :underline t :weight bold))))
   `(link-visited ((,class (:foreground "Red" :underline t :weight normal))))

   ;;; define some reusable adam faces that we can inherit from afterwards
   `(adam-strong-1-face ((,class (:foreground ,adam-yellow :weight bold))))
   `(adam-strong-2-face ((,class (:foreground ,adam-orange :weight bold))))
   `(adam-warning-face ((,class (:foreground ,adam-yellow-1 :weight bold :underline t))))
   `(adam-error-face ((,class (:foreground ,adam-red-1 :weight bold :underline t))))

   ;;; basic coloring
   `(default ((,class (:foreground ,adam-fg :background ,adam-bg))))
   `(cursor ((,class (:foreground ,adam-fg))))
   `(escape-glyph-face ((,class (:foreground ,adam-red))))
   `(fringe ((,class (:foreground ,adam-fg :background ,adam-bg))))
   `(header-line ((,class (:foreground ,adam-fg
                                       :background ,adam-bg
                                       :box (:line-width -1 :style released-button)))))
   `(highlight ((,class (:background "#eafdea"))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,adam-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,adam-green))))
   `(compilation-error-face ((,class (:foreground ,adam-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,adam-fg))))
   `(compilation-info-face ((,class (:foreground ,adam-blue))))
   `(compilation-info ((,class (:foreground ,adam-green+4 :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,adam-green))))
   `(compilation-line-face ((,class (:foreground ,adam-yellow))))
   `(compilation-line-number ((,class (:foreground ,adam-yellow))))
   `(compilation-message-face ((,class (:foreground ,adam-blue))))
   `(compilation-warning-face ((,class (:foreground ,adam-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,adam-fg))))
   `(grep-error-face ((,class (:foreground ,adam-red-1 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,adam-blue))))
   `(grep-match-face ((,class (:foreground ,adam-orange :weight bold))))
   `(match ((,class (:background ,adam-bg :foreground "Blue" :weight bold))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground "black" :background ,adam-yellow))))
   `(isearch-fail ((,class (:foreground ,adam-fg :background ,adam-red-4))))
   `(lazy-highlight ((,class (:foreground ,adam-fg :background ,adam-bg))))

   `(menu ((,class (:foreground ,adam-fg :background ,adam-bg))))
   `(minibuffer-prompt ((,class (:foreground ,adam-fg))))
   `(mode-line
     ((,class (:foreground ,adam-bg
                           :background ,adam-fg
                           :box (:line-width -1 :style released-button)))))
   `(mode-line-buffer-id ((,class (:foreground ,adam-bg :background ,adam-fg :weight bold))))
   `(mode-line-inactive
     ((,class (:foreground "#c0c0c0"
                           :background "dim gray"
                           :box (:line-width -1 :style released-button)))))
   `(region ((,class (:foreground ,adam-fg :background "light goldenrod yellow"))))
   `(secondary-selection ((,class (:background ,adam-bg+2))))
   `(trailing-whitespace ((,class (:background ,adam-red))))
   `(vertical-border ((,class (:foreground ,adam-bg))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground "MidnightBlue"))))
   `(font-lock-comment-face ((,class (:foreground "ForestGreen"))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,adam-green))))
   `(font-lock-constant-face ((,class (:foreground "CadetBlue"))))
   `(font-lock-doc-face ((,class (:foreground ,adam-fg))))
   `(font-lock-doc-string-face ((,class (:foreground "ForestGreen"))))
   `(font-lock-function-name-face ((,class (:foreground "MidnightBlue" :background ,adam-bg))))
   `(font-lock-keyword-face ((,class (:foreground "SteelBlue"))))
   `(font-lock-negation-char-face ((,class (:foreground ,adam-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,adam-blue-3))))
   `(font-lock-string-face ((,class (:foreground "black" :background "MistyRose1"))))
   `(font-lock-type-face ((,class (:foreground "SteelBlue"))))
   `(font-lock-variable-name-face ((,class (:foreground "Black"))))
   `(font-lock-warning-face ((,class (:foreground "Red" :weight normal :underline t))))

   ;;; external

   ;; diff
   `(diff-added ((,class (:foreground ,adam-green+4))))
   `(diff-changed ((,class (:foreground ,adam-yellow))))
   `(diff-removed ((,class (:foreground ,adam-red))))
   `(diff-header ((,class (:background ,adam-bg+1))))
   `(diff-file-header
     ((,class (:background ,adam-bg+2 :foreground ,adam-fg :bold t))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,adam-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,adam-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,adam-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,adam-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,adam-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,adam-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,adam-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:foreground ,adam-red-1 :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,adam-yellow-1 :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground "dark goldenrod" :weight normal :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,adam-red-1 :weight normal :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,adam-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,adam-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,adam-yellow))))
   `(erc-keyword-face ((,class (:foreground ,adam-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,adam-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,adam-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,adam-green))))
   `(erc-pal-face ((,class (:foreground ,adam-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,adam-orange :background ,adam-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,adam-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1-face ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty-face ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2-face ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty-face ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3-face ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty-face ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4-face ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty-face ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5-face ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty-face ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6-face ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty-face ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low-face ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty-face ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1-face ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2-face ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3-face ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4-face ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5-face ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6-face ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low-face ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content-face ((,class (:inherit message-header-other))))
   `(gnus-header-from-face ((,class (:inherit message-header-from))))
   `(gnus-header-name-face ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups-face ((,class (:inherit message-header-other))))
   `(gnus-header-subject-face ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled-face ((,class (:foreground ,adam-orange))))
   `(gnus-summary-high-ancient-face ((,class (:foreground ,adam-blue))))
   `(gnus-summary-high-read-face ((,class (:foreground ,adam-green :weight bold))))
   `(gnus-summary-high-ticked-face ((,class (:foreground ,adam-orange :weight bold))))
   `(gnus-summary-high-unread-face ((,class (:foreground ,adam-fg :weight bold))))
   `(gnus-summary-low-ancient-face ((,class (:foreground ,adam-blue))))
   `(gnus-summary-low-read-face ((t (:foreground ,adam-green))))
   `(gnus-summary-low-ticked-face ((,class (:foreground ,adam-orange :weight bold))))
   `(gnus-summary-low-unread-face ((,class (:foreground ,adam-fg))))
   `(gnus-summary-normal-ancient-face ((,class (:foreground ,adam-blue))))
   `(gnus-summary-normal-read-face ((,class (:foreground ,adam-green))))
   `(gnus-summary-normal-ticked-face ((,class (:foreground ,adam-orange :weight bold))))
   `(gnus-summary-normal-unread-face ((,class (:foreground ,adam-fg))))
   `(gnus-summary-selected-face ((,class (:foreground ,adam-yellow :weight bold))))
   `(gnus-cite-1-face ((,class (:foreground ,adam-blue))))
   `(gnus-cite-10-face ((,class (:foreground ,adam-yellow-1))))
   `(gnus-cite-11-face ((,class (:foreground ,adam-yellow))))
   `(gnus-cite-2-face ((,class (:foreground ,adam-blue-1))))
   `(gnus-cite-3-face ((,class (:foreground ,adam-blue-2))))
   `(gnus-cite-4-face ((,class (:foreground ,adam-green+2))))
   `(gnus-cite-5-face ((,class (:foreground ,adam-green+1))))
   `(gnus-cite-6-face ((,class (:foreground ,adam-green))))
   `(gnus-cite-7-face ((,class (:foreground ,adam-red))))
   `(gnus-cite-8-face ((,class (:foreground ,adam-red-1))))
   `(gnus-cite-9-face ((,class (:foreground ,adam-red-2))))
   `(gnus-group-news-1-empty-face ((,class (:foreground ,adam-yellow))))
   `(gnus-group-news-2-empty-face ((,class (:foreground ,adam-green+3))))
   `(gnus-group-news-3-empty-face ((,class (:foreground ,adam-green+1))))
   `(gnus-group-news-4-empty-face ((,class (:foreground ,adam-blue-2))))
   `(gnus-group-news-5-empty-face ((,class (:foreground ,adam-blue-3))))
   `(gnus-group-news-6-empty-face ((,class (:foreground ,adam-bg+2))))
   `(gnus-group-news-low-empty-face ((,class (:foreground ,adam-bg+2))))
   `(gnus-signature-face ((,class (:foreground ,adam-yellow))))
   `(gnus-x-face ((,class (:background ,adam-fg :foreground ,adam-bg))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,adam-bg-1))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,adam-fg :weight bold :background ,adam-bg))))
   `(ido-only-match ((,class (:foreground ,adam-orange :weight bold :background ,adam-bg))))
   `(ido-subdir ((,class (:foreground ,adam-fg :background ,adam-bg))))

   ;; linum-mode
   `(linum ((,class (:foreground ,adam-fg-1 :background ,adam-bg-1))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,adam-yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,adam-orange :weight bold))))

   ;; message-mode
   `(message-cited-text-face ((,class (:inherit font-lock-comment))))
   `(message-header-name-face ((,class (:foreground ,adam-green+1))))
   `(message-header-other-face ((,class (:foreground ,adam-green))))
   `(message-header-to-face ((,class (:foreground ,adam-yellow :weight bold))))
   `(message-header-from-face ((,class (:foreground ,adam-yellow :weight bold))))
   `(message-header-cc-face ((,class (:foreground ,adam-yellow :weight bold))))
   `(message-header-newsgroups-face ((,class (:foreground ,adam-yellow :weight bold))))
   `(message-header-subject-face ((,class (:foreground ,adam-orange :weight bold))))
   `(message-header-xheader-face ((,class (:foreground ,adam-green))))
   `(message-mml-face ((,class (:foreground ,adam-yellow :weight bold))))
   `(message-separator-face ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,adam-orange))))
   `(mew-face-header-from ((,class (:foreground ,adam-yellow))))
   `(mew-face-header-date ((,class (:foreground ,adam-green))))
   `(mew-face-header-to ((,class (:foreground ,adam-red))))
   `(mew-face-header-key ((,class (:foreground ,adam-green))))
   `(mew-face-header-private ((,class (:foreground ,adam-green))))
   `(mew-face-header-important ((,class (:foreground ,adam-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,adam-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,adam-red))))
   `(mew-face-header-xmew ((,class (:foreground ,adam-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,adam-red))))
   `(mew-face-body-url ((,class (:foreground ,adam-orange))))
   `(mew-face-body-comment ((,class (:foreground ,adam-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,adam-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,adam-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,adam-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,adam-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,adam-red))))
   `(mew-face-mark-review ((,class (:foreground ,adam-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,adam-green))))
   `(mew-face-mark-delete ((,class (:foreground ,adam-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,adam-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,adam-green))))
   `(mew-face-mark-unread ((,class (:foreground ,adam-red-2))))
   `(mew-face-eof-message ((,class (:foreground ,adam-green))))
   `(mew-face-eof-part ((,class (:foreground ,adam-yellow))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,adam-fg))))
   `(nav-face-button-num ((,class (:foreground ,adam-cyan))))
   `(nav-face-dir ((,class (:foreground ,adam-green))))
   `(nav-face-hdir ((,class (:foreground ,adam-red))))
   `(nav-face-file ((,class (:foreground ,adam-fg))))
   `(nav-face-hfile ((,class (:foreground ,adam-red-4))))

   ;; org-mode
   `(org-agenda-date-today
     ((,class (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,adam-fg :weight bold))))
   `(org-checkbox ((,class (:background ,adam-bg+2 :foreground "white"
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,adam-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,adam-red-1))))
   `(org-done ((,class (:bold t :weight bold :foreground ,adam-green+3))))
   `(org-formula ((,class (:foreground ,adam-yellow-2))))
   `(org-headline-done ((,class (:foreground ,adam-green+3))))
   `(org-hide ((,class (:foreground ,adam-bg-1))))
   `(org-level-1 ((,class (:foreground ,adam-orange))))
   `(org-level-2 ((,class (:foreground ,adam-green+1))))
   `(org-level-3 ((,class (:foreground ,adam-blue-1))))
   `(org-level-4 ((,class (:foreground ,adam-yellow-2))))
   `(org-level-5 ((,class (:foreground ,adam-cyan))))
   `(org-level-6 ((,class (:foreground ,adam-green-1))))
   `(org-level-7 ((,class (:foreground ,adam-red-4))))
   `(org-level-8 ((,class (:foreground ,adam-blue-4))))
   `(org-link ((,class (:foreground ,adam-yellow-2 :underline t))))
   `(org-scheduled ((,class (:foreground ,adam-green+4))))
   `(org-scheduled-previously ((,class (:foreground ,adam-red-4))))
   `(org-scheduled-today ((,class (:foreground ,adam-blue+1))))
   `(org-special-keyword ((,class (:foreground ,adam-yellow-1))))
   `(org-table ((,class (:foreground ,adam-green+2))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,adam-orange))))
   `(org-todo ((,class (:bold t :foreground ,adam-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,adam-red :weight bold))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; perl
   `(cperl-array-face ((t (:foreground "Black" :background "White" :weight normal :slant normal))))
   `(cperl-hash-face ((t (:foreground "Black" :background "White" :weight normal :slant normal))))
   `(cperl-pod-face ((t (:foreground "DarkGreen" :background "White"))))
   `(cperl-nonoverridable-face ((t (:foreground "firebrick"))))
   `(cperl-invalid-face ((t (:foreground "black" :background "firebrick"))))
   `(cperl-pod-head-face ((t (:foreground "Green" :background "White" :weight bold))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,adam-cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,adam-yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,adam-blue+1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,adam-red+1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,adam-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,adam-blue-1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,adam-green+4))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,adam-red-3))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,adam-yellow-2))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,adam-green+2))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,adam-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,adam-red-4))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,adam-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,adam-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,adam-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,adam-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,adam-red))))
   `(rpm-spec-package-face ((,class (:foreground ,adam-red))))
   `(rpm-spec-section-face ((,class (:foreground ,adam-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,adam-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,adam-red))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,adam-red-3 :background ,adam-bg :weight bold))))
   `(show-paren-match ((,class (:foreground ,adam-blue-1 :background ,adam-bg :weight bold))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,adam-red))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,adam-bg :foreground ,adam-bg+1))))
   `(whitespace-hspace ((,class (:background ,adam-bg :foreground ,adam-bg+1))))
   `(whitespace-tab ((,class (:background ,adam-bg :foreground ,adam-red))))
   `(whitespace-newline ((,class (:foreground ,adam-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,adam-red :background ,adam-bg))))
   `(whitespace-line ((,class (:background ,adam-bg-05 :foreground ,adam-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,adam-orange :foreground ,adam-orange))))
   `(whitespace-indentation ((,class (:background ,adam-yellow, :foreground ,adam-red))))
   `(whitespace-empty ((,class (:background ,adam-yellow :foreground ,adam-red))))
   `(whitespace-space-after-tab ((,class (:background ,adam-yellow :foreground ,adam-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,adam-red-2))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,adam-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,adam-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,adam-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,adam-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,adam-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,adam-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,adam-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,adam-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,adam-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,adam-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,adam-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,adam-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,adam-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,adam-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,adam-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,adam-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,adam-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,adam-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,adam-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,adam-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,adam-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,adam-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,adam-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,adam-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))))

(custom-theme-set-variables
 'adam
 '(ansi-color-names-vector [adam-bg adam-red adam-green adam-yellow
                                       adam-blue adam-magenta adam-cyan adam-fg]))

(provide-theme 'adam)

;; Local Variables:
;; no-byte-compile: t
;; End:
