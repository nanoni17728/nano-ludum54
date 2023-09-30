{
  description = "Provides what’s needed for Stack to build happilly";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.pkg-config
            pkgs.stack
            pkgs.SDL2
            pkgs.gmp
          ];
        };
      });
}
