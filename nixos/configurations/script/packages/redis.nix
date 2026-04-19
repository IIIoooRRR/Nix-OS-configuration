{pkgs, config, lib, ...}:
{
  services.redis = {
    enable = true;
    bind = "127.0.0.1";
    port = 6379;
    settings = {
      maxmemory = "1gb";
      maxmemory-policy = "volatile-lru";
      save =  [

           ];
    };
  };
}
