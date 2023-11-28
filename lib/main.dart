import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      theme: ThemeData(
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

