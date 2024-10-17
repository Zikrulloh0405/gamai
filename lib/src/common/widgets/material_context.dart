import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gamai/generated/l10n.dart';

import '../../feature/home/presentation/pages/home_page.dart';

class MaterialContext extends StatelessWidget {
  MaterialContext({super.key}) : builderKey = GlobalKey();

  final GlobalKey builderKey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => "Gamai",
      // theme: ,
      // locale: ,
      supportedLocales: AppLocalizations.delegate.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const HomePage(),
      builder: (BuildContext context, Widget? child) =>
          MediaQuery.withNoTextScaling(
        key: builderKey,
        child: child ?? const SizedBox.shrink(),
      ),
    );
  }
}
