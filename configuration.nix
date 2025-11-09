{ _ }:
{
  imports = [
    ./users.nix
    ./hardware-configuration.nix
  ];

  nix.settings = {
    experimental-features = "nix-command flakes";
  };

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    initrd.availableKernelModules = [ "ahci" "xhci_pci" "virtio_pci" "virtio_scsi" "sd_mod" "sr_mod" ];
  };

  time.timeZone = "UTC";
  i18n.defaultLocale = "en_US.UTF-8";
  console.keyMap = "us";

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
    };
  };

  networking = {
    hostName = "pfplgbt";
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 80 443 ];
    };
  };


  system.stateVersion = "25.05";
}
