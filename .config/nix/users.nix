{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.emilia = {
    isNormalUser = true;
    description = "Emilia Daelman";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      kdePackages.bluedevil
    #  thunderbird
    ];
    shell = pkgs.zsh;
  };

}
