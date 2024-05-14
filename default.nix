{stdenvNoCC}:
stdenvNoCC.mkDerivation {
  name = "in-your-nix-store";
  version = "pre-beta-alpha-0.0.0-next.1,5";

  src = ./content;

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out
  '';
}
