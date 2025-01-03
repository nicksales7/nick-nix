{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [
    marksman
  ];
  
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {        
      theme = "varua";
      editor = {
        line-number = "relative";
        mouse = false;
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
      };
    };
    languages = {
      language = [{
        name = "markdown";
        soft-wrap.enable = true;
        soft-wrap.wrap-indicator = "";
      }];
    };
  };
}
