import 'package:flutter/material.dart';
import 'package:value_listanable_example/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale = Locale('ru');

  Locale get locale => _locale == null ? Locale('ru') : _locale!;

  getLocale(String code) {
    Locale locale = Locale('ru');
    if (code == 'KG') {
      locale = Locale('kk');
    } else if (code == 'RU') {
      locale = Locale('RU');
    }
    return locale;
  }

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
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
