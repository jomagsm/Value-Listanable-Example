import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:value_listanable_example/theme/color_theme.dart';

import 'l10n/l10n.dart';
import 'provider/locale_provider.dart';
import 'screens/main_screen/main_screen.dart';
import 'screens/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // final getIt = GetIt.instance;
  // getIt.registerLazySingleton<Articles>(() => createData());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => MainScreen()
  };
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: ColorPalette.gray,
              primarySwatch: Colors.blue,
            ),
            locale: provider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: SplashScreen(nextRoute: '/Home'),
            routes: routes,
          );
        },
      );
  //  {
  //   return MaterialApp(
  //     localizationsDelegates: [
  //       AppLocalizations.delegate,
  //       GlobalMaterialLocalizations.delegate,
  //       GlobalCupertinoLocalizations.delegate,
  //       GlobalWidgetsLocalizations.delegate,
  //     ],
  //     supportedLocales: L10n.all,
  //     locale: provide,
  //     debugShowCheckedModeBanner: false,
  //     title: 'it Megacom 2',
  // theme: ThemeData(
  //   scaffoldBackgroundColor: ColorPalette.gray,
  //   primarySwatch: Colors.blue,
  // ),
  //     home: MainScreen(),
  //   );
  // }
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
