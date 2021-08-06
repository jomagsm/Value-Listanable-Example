import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:value_listanable_example/theme/text_theme.dart';


class SplashScreen extends StatefulWidget {
  final String nextRoute;
  SplashScreen({required this.nextRoute});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(widget.nextRoute);
    });
  }

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
                decoration: const BoxDecoration(
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