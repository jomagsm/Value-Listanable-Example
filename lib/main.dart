import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:value_listanable_example/data/server_api/models/article.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/l10n.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton<Articles>(() => createData());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      locale: Locale('ru'),
      debugShowCheckedModeBanner: false,
      title: 'it Megacom 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyTestApp(),
    );
  }
}

class MyTestApp extends StatelessWidget {
  const MyTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppLocalizations.of(context)!.test),
      ),
    );
  }
}
