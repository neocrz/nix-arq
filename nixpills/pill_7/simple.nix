let
  pkgs = import <nixpkgs> {};
in
  pkgs.stdenv.mkDerivation {
    name = "simple";
    builder = "${pkgs.bash}/bin/bash";
    args = [ ./simple_builder.sh ];
    inherit (pkgs) gcc coreutils;
    src = ./simple.c;
    system = builtins.currentSystem;
}
