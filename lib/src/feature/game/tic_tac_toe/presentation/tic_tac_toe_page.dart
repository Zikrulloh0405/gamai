import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamai/generated/l10n.dart';
import 'package:gamai/src/common/utils/extensions/context_extensions.dart';
import 'package:gamai/src/common/widgets/custom_neumorphic_button.dart';

class TicTacToePage extends StatelessWidget {
  const TicTacToePage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = context.colorScheme;
    AppLocalizations localized = context.localized;

    return Scaffold(
      backgroundColor: colorScheme.primaryContainer,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 65.h,
          horizontal: 46.w,
        ),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: CustomNeumorphicButton(
                  onPressed: () {},
                  child: localized.restart,
                ))
          ],
        ),
      ),
    );
  }
}
