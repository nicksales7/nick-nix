{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ../../imports/hardware.nix
    ./user.nix    
  ];

  nixpkgs.config.allowUnfree = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.blacklistedKernelModules = [ "nouveau" ];

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Canada/Eastern";
  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.printing.enable = true;

  services.openssh.enable = true;

  system.stateVersion = "24.11";
}