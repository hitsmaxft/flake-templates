{
  description = "A collection of flake templates as starting points for your awesome projects";

  outputs = { self, nixpkgs, ... }@inputs: {
    templates = {
      simplebin = {
        path = ./templates/simplebin;
        description = "Template for a shell execute";
      };
      shellscript = {
        path = ./templates/simplebin;
        description = "Template for a shell execute";
      };
    };
  };
}
