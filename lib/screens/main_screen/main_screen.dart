import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:value_listanable_example/theme/text_theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.news,
              style: TextThemes.appBarTitle,
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/lang.png'))),
            )
          ],
        ),
      ),
    );
  }
}
