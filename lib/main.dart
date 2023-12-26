import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/main/pharmacy.dart';
import 'package:pharmacy_project/shared/bloc_observer.dart';
import 'package:pharmacy_project/shared/network/dio_helper.dart';



void main() {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();

  runApp(const Pharmacy());
}


