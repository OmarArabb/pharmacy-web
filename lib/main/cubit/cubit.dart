import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/main/cubit/states.dart';
import 'package:pharmacy_project/shared/constants.dart';

class MainCubit extends Cubit<MainStates>{
  MainCubit() : super(MainInitialStates());

  static MainCubit get(context) => BlocProvider.of(context);

  String lang = 'en';

  void changeLanguage(){

    lang = lang == 'en' ? 'ar' : 'en';
    isArabic = ! isArabic;
    emit(ChangeLanguageStates());
  }
}