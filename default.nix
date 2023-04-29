{
  pkgs ? import <nixpkgs> {},
}:

let
  pythonEnv = pkgs.python3.withPackages (ps: with ps; [
    numpy
    pandas
  ]);

  nodeEnv = pkgs.nodePackages.shell.override {
    extraBuildInputs = [
      pkgs.pnpm
    ];
    extraPath = with pkgs.nodePackages; [
      typescript
      next
      react
      react-dom
    ];
  };
in {
  pythonEnv = pythonEnv;
  nodeEnv = nodeEnv;
}
