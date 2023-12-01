import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pharmacy_project/constants.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/view/pharmacy_layout.dart';
import 'package:pharmacy_project/shared/bloc_observer.dart';


void main() {
  Bloc.observer = MyBlocObserver();


  runApp(const Pharmacy());
}

class Pharmacy extends StatelessWidget {
  const Pharmacy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        locale: const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge : TextStyle(
            color: secondaryColor
          )
        ),
        iconTheme: IconThemeData(
          color: secondaryColor
        ),
        navigationRailTheme: NavigationRailThemeData(
          unselectedIconTheme: IconThemeData(
            color: thirdColor
          ),
          unselectedLabelTextStyle: TextStyle(
            color: thirdColor
          ),
          backgroundColor: mainColor,
          selectedLabelTextStyle: TextStyle(
            color: secondaryColor
          ),
          selectedIconTheme: IconThemeData(
            color: secondaryColor,
          )
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const AppLayout()
    );
  }
}

