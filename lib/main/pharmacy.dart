import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/view/pharmacy_layout.dart';
import 'package:pharmacy_project/main/cubit/cubit.dart';
import 'package:pharmacy_project/main/cubit/states.dart';
import 'package:pharmacy_project/modules/add_products/cubit/cubit.dart';
import 'package:pharmacy_project/modules/orders/cubit/cubit.dart';
import 'package:pharmacy_project/modules/products/cubit/cubit.dart';
import 'package:pharmacy_project/shared/styles/app_theme.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainCubit(),
        ),
        BlocProvider(create: (context) => GetProductsCubit()..getProducts(),),
        BlocProvider(create: (context) => AddProductsCubit(),),
        BlocProvider(create: (context) => OrderCubit(),)
      ],
      child: BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: Locale(MainCubit.get(context).lang),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              theme: themeData,
              home: const PharmacyLayout());
        },
      ),
    );
  }
}
