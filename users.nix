{ ... }:
{
  users.users = {
    root.hashedPassword = "!"; # Disable root login
    lgbt = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFjnOwCitFWrv7GeMnqIsuRAj/oA2B8ehrtqjCkFnqBg kelwing@desktop"
      ];
    };
  };

  security.sudo.wheelNeedsPassword = false;
}
