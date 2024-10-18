import 'dart:ui';

import 'package:bloc/bloc.dart';

import '../local/app_storage.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en', 'EN')) {
    loadLocale();
  }

  Future<void> loadLocale() async {
    final savedLocaleCode = await AppStorage.$read(key: StorageKey.locale);
    if (savedLocaleCode != null) {
      emit(Locale(savedLocaleCode));
    }
  }

  Future<void> changeLocale(Locale locale) async {
    await AppStorage.$write(key: StorageKey.locale, value: locale.languageCode);
    emit(locale);
  }
}
