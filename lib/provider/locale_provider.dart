import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale = Locale('ru');

  Locale get locale => _locale == null ? Locale('ru') : _locale!;

  getLocale(String code) {
    if (code == 'KG') {
      return Locale('kk');
    } else if (code == 'RU') {
      return Locale('ru');
    }
  }

  void setLocale(String code) {
    _locale = getLocale(code);
    notifyListeners();
  }

  String getLocaleCode() {
    if (_locale == Locale('ru')) {
      return "ru";
    } else
      return 'kg';
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
