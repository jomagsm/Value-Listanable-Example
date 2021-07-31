import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:value_listanable_example/theme/text_theme.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 94,
                width: 94,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/Rectangle 254.png'))),
              ),
              const SizedBox(
                height: 43,
              ),
              Text(
                AppLocalizations.of(context)!.news,
                style: TextThemes.title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
