{ config, pkgs, lib, ... }:

lib.mkIf (config.networking.hostName == "milly-nixos-laptop") {
  # laptop-specific config
  environment.systemPackages = with pkgs; [
  ];
}
