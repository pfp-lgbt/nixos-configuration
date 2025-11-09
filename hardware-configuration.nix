{ ... }:
{
  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
     device = "/dev/disk/by-label/boot";
     fsType = "vfat";
     options = [ "fmask=0077" "dmask=0077" ];
   };

  # Provide any other hardware configuration here. To automate this process, you can use
  # `nixos-generate-config`, which comes installed on NixOS. For more information:
  # https://nixos.org/manual/nixos/stable/#sec-installation-manual-installing
}
