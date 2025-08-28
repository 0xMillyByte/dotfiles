{ config, pkgs, lib, ... }:

lib.mkIf (config.networking.hostName == "milly-nixos-desktop") {
  # desktop-specific config
  environment.systemPackages = with pkgs; [
    cowsay
  ];
}
