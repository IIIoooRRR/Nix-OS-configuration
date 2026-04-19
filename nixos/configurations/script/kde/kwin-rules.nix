{ config, pkgs, ... }:

{
  environment.etc."kwinrulesrc" = {
    text = ''
      [General]
      RulesCount=1
      
      [1]
      Description=Firefox прозрачность
      wmclass=firefox
      wmclassmatchrule=1
      activeopacity=90
      activeopacityrule=2
      inactiveopacity=80
      inactiveopacityrule=2
    '';
  };
}
