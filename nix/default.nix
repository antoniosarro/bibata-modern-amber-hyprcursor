{ lib, stdenv, nixpkgs, fetchurl }:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-amber-hyprcursor";
  version = "0.0.1";
  src = nixpkgs.fetchFromGitHub {
    owner = "antoniosarro";
    repo = "bibata-modern-amber-hyprcursor";
    rev = "d2c0e6802f0ed1e7c638bb27b5aa8587b578d083";
    sha256 = "sha256-ArUX5qlqAXUqcRqHz4QxXy3KgkfasTPA/Qwf6D2kV0U=";
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