{pkgs, config, ...}: {
home-manager.users.kezess = {
  services.mako = {
  enable = true;
  settings = {
    background-color = "#282a36cc"; 
    text-color = "#f8f8f2";        
    border-color = "#6272a4";      
  
    # Геометрия и стиль
    border-size = 2;
    border-radius = 12;            
    width = 350;
    height = 150;
    padding = "15,20";            
  
  font = "JetBrainsMono Nerd Font 10";
  default-timeout = 5000;
  anchor = "top-right";         
     };
   };
 };
}
