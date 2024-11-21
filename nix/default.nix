{ lib, stdenv, nixpkgs, fetchurl }:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-amber-hyprcursor";
  version = "0.0.1";
  src = nixpkgs.fetchFromGitHub {
    owner = "antoniosarro";
    repo = "bibata-modern-amber-hyprcursor";
    rev = "6503266674b3b30da20abd1d25b129129b02d89d";
    sha256 = "sha256-q0isbGxlZzVXmOXujmywpGdOHSNHsUWaF5pVrQ4PVBs=";
  };

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/icons/bibata-modern-amber-hyprcursor
    cp -R . $out/share/icons/bibata-modern-amber-hyprcursor/
    
    runHook postInstall
  '';

  meta = with lib; {
    description = "Bibata Modern Amber Cursors";
    downloadPage = "https://github.com/antoniosarro/bibata-modern-amber-hyprcursor/releases";
    homepage = "https://github.com/antoniosarro/bibata-modern-amber-hyprcursor";
    license = licenses.gpl3;
    maintainers = with maintainers; [ antoniosarro ];
  };
})