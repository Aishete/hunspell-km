{ stdenv }:

stdenv.mkDerivation {
  pname = "hunspell-dict-km";
  version = "1.0";
  
  src = ./.;
  
  installPhase = ''
    mkdir -p $out/share/hunspell
    cp km_KH.dic $out/share/hunspell/
    cp km_KH.aff $out/share/hunspell/
  '';
  
  meta = with stdenv.lib; {
    description = "Khmer Hunspell dictionary (Choun Nath + Headley)";
    license = licenses.gpl3Plus;
    platforms = platforms.all;
  };
}
