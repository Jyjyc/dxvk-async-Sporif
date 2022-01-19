let
  sources = import ./nix/sources.nix;
  pkgs = (import sources.nixpkgs {}).pkgsCross.mingw32;
in
pkgs.mkShell {
  buildInputs = [
    pkgs.meson
    pkgs.ninja
    pkgs.git
    #pkgs.mingw32.buildPackages.gcc
  ];
}
