{
  description = "dev shell";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };
  outputs = { self, nixpkgs, ... }@inputs: let 
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShells.${system} = {
      default = pkgs.mkShell {
        packages = [
          pkgs.perl
          pkgs.python3
          pkgs.zlib
          pkgs.ghostscript
          pkgs.gcc
          pkgs.gnumake
          pkgs.pkg-config
          pkgs.autoconf
          pkgs.automake
          pkgs.libtool
          pkgs.wget
          pkgs.ant
          pkgs.libxml2
          pkgs.libxslt
        ];
      };
    };
  };
}
