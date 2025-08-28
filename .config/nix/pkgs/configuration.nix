{ config, pkgs, lib, ... }:

{
  imports =
    [
      ./shared.nix
      ./desktop.nix
      ./laptop.nix
    ];
}
