import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gamai/generated/l10n.dart';
import 'package:gamai/src/common/bloc/theme_cubit.dart';

import '../../feature/game/tic_tac_toe/presentation/tic_tac_toe_page.dart';
import '../../feature/home/presentation/pages/home_page.dart';
import '../bloc/local_cubit.dart';

class MaterialContext extends StatelessWidget {
  MaterialContext({super.key}) : builderKey = GlobalKey();

  final GlobalKey builderKey;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocaleCubit()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return BlocBuilder<LocaleCubit, Locale>(
            builder: (context, locale) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                onGenerateTitle: (BuildContext context) => "Gamai",
                theme: theme,
                locale: locale,
                supportedLocales: AppLocalizations.delegate.supportedLocales,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                home: const TicTacToePage(),
                builder: (BuildContext context, Widget? child) =>
                    MediaQuery.withNoTextScaling(
                  key: builderKey,
                  child: child ?? const SizedBox.shrink(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
