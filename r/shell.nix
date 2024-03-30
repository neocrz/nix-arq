{ pkgs ? <nixpkgs>, ...}:

with pkgs;
let
R-pkgs = rWrapper.override{ packages = with rPackages; [ 
  # ggplot2
  # dplyr
  # xts 
]; };
in
mkShell {
  nativeBuildInputs = [
  ];

  buildInputs = [
    pkg-config
    R-pkgs
  ];

  shellHook = ''
    # ...
  '';
}
