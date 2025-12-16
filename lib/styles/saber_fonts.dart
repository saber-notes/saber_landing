import 'package:jaspr/dom.dart';

abstract class SaberFonts {
  static final sansSerif = FontFamily.list([
    FontFamily('Atkinson Hyperlegible Next'),
    FontFamily('Atkinson Hyperlegible'),
    FontFamily('Adwaita Sans'),
    FontFamily('Inter'),
    FontFamily('Roboto'),
    FontFamilies.uiSansSerif,
    FontFamilies.systemUi,
    FontFamilies.sansSerif,
  ]);

  static final cursive = FontFamily.list([
    FontFamily('Neucha'),
    FontFamily('Dekko'),
    FontFamily('Segoe Print'),
    FontFamily('Bradley Hand'),
    FontFamily('Chilanka'),
    FontFamily('TSCu_Comic'),
    FontFamily('casual'),
    FontFamilies.cursive,
  ]);
}
