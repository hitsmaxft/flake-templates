{pkgs, system}: pkgs.writeShellApplication {
  name = "hello";
  text = ''
        cat "${"$"}{@}"
  '';
}
