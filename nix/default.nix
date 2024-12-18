{ lib, stdenv, nixpkgs, fetchurl }:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-amber-hyprcursor";
  version = "0.0.1";
  src = nixpkgs.fetchFromGitHub {
    owner = "antoniosarro";
    repo = "bibata-modern-amber-hyprcursor";
    rev = "55645dfe589c06f82f4d7d202a30708a1dff463c";
    sha256 = "sha256-SDiEDwrjU/j1tm68lnfLYX9n6y06I5215Eksj83XNkg=";
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