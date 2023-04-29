{
  pkgs ? import <nixpkgs> {},
}:

let
  pythonEnv = pkgs.python3.withPackages (ps: with ps; [
    numpy
    pandas
  ]);

  nodeEnv = pkgs.mkShell {
    buildInputs = with pkgs; [
      nodejs
      nodePackages.pnpm
      nodePackages.typescript
    ];
  };
in {
  pythonEnv = pythonEnv;
  nodeEnv = nodeEnv;
}
