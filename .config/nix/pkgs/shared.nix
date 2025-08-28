{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Install firefox.
  programs.firefox.enable = true;

  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;

  programs.gamemode.enable = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    ohMyZsh = {
      enable = true;
      theme = ""; # or "agnoster", etc.
      plugins = [ "git" "sudo" ];
    };
  };

  services.emacs = {
    enable = true;
    package = pkgs.emacs; # replace with emacs-gtk, or a version provided by the community overlay if desired.
  };

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 10d --keep 3";
  };
  environment.variables.NH_CONFIG = "/etc/nixos";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    vesktop
    git
    unzip
    nix-search
    stow
    nodejs
    sl
    btop
    bat

    # nixos
    nh

    # gaming
    mangohud
    protonup
    bottles

    # terminal
    kitty
    fastfetch
    eza
    zoxide
    zsh-autosuggestions
    zsh-syntax-highlighting
    starship

    # emacs
    emacs
    ripgrep
    cmake
    gnumake
  ];


  fonts.packages = with pkgs; [
    fira
    fira-code
    fira-code-symbols
    nerd-fonts.fira-code
  ];

}
