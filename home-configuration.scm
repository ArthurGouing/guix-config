;; This "home-environment" file can be passed to 'guix home reconfigure'
;; to reproduce the content of your profile.  This is "symbolic": it only
;; specifies package names.  To reproduce the exact same profile, you also
;; need to capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(use-modules (gnu home)
             (gnu packages)
             (gnu services)
             (guix gexp)
             (gnu home services)
             (gnu home services shells)
             (gnu home services dotfiles)
             ;; (gnu home services dconf)
)

(home-environment
  ;; Below is the list of packages that will show up in your
  ;; Home profile, under ~/.guix-home/profile.
  (packages (specifications->packages (list "coreutils"
                                            "emacs"
                                            "git"
                                            "gawk"
                                            "kitty"
                                            "neovim"
                                            "vim"
					                        "stow"
                                            ))) ;; TODO: zen

  ;; Below is the list of Home services.  To search for available
  ;; services, run 'guix home search KEYWORD' in a terminal.
  (services
   (list 
      (service home-bash-service-type
                           (home-bash-configuration
                              (bashrc (list (local-file "bashrc")))
                           ;; (bash-profile (list (local-file ".bash_profile" "bash_profile")))
                           ;; (bash-logout (list (local-file ".bash_logout" "bash_logout"))))
  )) ;; bashrc

  (service home-dotfiles-service-type
        (home-dotfiles-configuration
          (directories `("./dotfiles")))
  ) ;; dotfiles
  
  ;; Kitty Configurations ;;
  (service home-files-service-type
  `((".local/share/applications/kitty.desktop"
     ,(local-file "applications/kitty.desktop")))
  ) ;; kitty desktop


 ));; services

) ;; home environement


