import 'package:cmdi_student_handbook/provider/theme_provider.dart';
import 'package:flutter/cupertino.dart';

class ThemeModal extends ChangeNotifier {
  late bool _isDark;
  late ThemeSharedPreferences themeSharedPreferences;
  bool get isDark => _isDark;

  ThemeModal() {
    _isDark = false;
    themeSharedPreferences = ThemeSharedPreferences();
    getThemePrences();
  }

  set isDark(bool value) {
    _isDark = value;
    themeSharedPreferences.setTheme(value);
    notifyListeners();
  }

  getThemePrences() async {
    _isDark = await themeSharedPreferences.getTheme();
    notifyListeners();
  }
}
