{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  nativeBuildInputs = [
    nodejs-18_x
    nodePackages.pnpm
    git
    jq
    moreutils
  ];
  shellHook = with pkgs; ''
    export PATH="$(pwd)/node_modules/.bin:$PATH"
  '';
}

