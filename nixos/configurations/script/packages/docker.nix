{config, pkgs, ...}:
{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };



  systemd.services.proxy-containers = {
    script = ''
      ${pkgs.docker-compose}/bin/docker-compose -f /path/to/docker-compose.yml up -d
    '';
    wantedBy = ["multi-user.target"];
    after = ["docker.service"];
    path = [pkgs.docker-compose];
  };
}
