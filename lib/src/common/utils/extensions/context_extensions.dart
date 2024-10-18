import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

extension CustomContextExtension on BuildContext {
  AppLocalizations get localized => AppLocalizations.of(this)!;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
}
