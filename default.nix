{ }:

let
  pkgs = import <nixpkgs> { };
in
  pkgs.stdenv.mkDerivation {
    name = "WoostLandingPage";
    buildInputs = with pkgs; [
      docker docker_compose
      nodejs-8_x yarn
      phantomjs
      gnumake gcc # required for some weird npm things
    ];

    installPhase= ''
    '';
  }
