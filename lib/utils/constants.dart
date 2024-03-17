import 'dart:io';
import 'dart:ui';

class Constants {
  /// fonts
  static const String fontInter = 'Inter';

  /// Colors
  static const Color secondaryColor = Color(0xFFDCA11D);
  static const Color greyScale20 = Color(0xFF333333);
  static const Color greyScale40 = Color(0xFF666666);
  static const Color greyScale90 = Color(0xFFE6E6E6);
  static const Color almostWhite = Color(0xFFEEEEEE);

  static const int maxMobileWidth = 700;
  static const int maxTabletWidth = 1120;
  static const int minDesktopWidth = 1480;

  static bool isHandSet({required double width}) =>
      (Platform.isIOS || Platform.isAndroid) && width < 700;
}
