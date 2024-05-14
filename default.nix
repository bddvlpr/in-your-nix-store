{stdenvNoCC}:
stdenvNoCC.mkDerivation {
  name = "in-your-nix-store";

  src = ./content;

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out
  '';
}
