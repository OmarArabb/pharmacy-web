import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/settings/cubit/states.dart';
import 'package:pharmacy_project/shared/network/dio_helper.dart';

class SettingCubit extends Cubit<SettingsStates>{
  SettingCubit() : super (CreateNewItemInitialState());

  Map<String , dynamic> newItem = {};
  
  static SettingCubit get(context) => BlocProvider.of(context);
  
  Future <void> createCategory() async {
    emit(CreateNewItemLoadingState());
    DioHelper.postData(url: 'create_category', data: newItem).then((value){
      print(newItem);
      newItem.clear();
    }).catchError((error){
      print(error.toString());
    });
  }

  Future <void> createFactory() async {
    emit(CreateNewItemLoadingState());
    DioHelper.postData(url: 'create_made_by', data: newItem).then((value){
      print(newItem);
      newItem.clear();
    }).catchError((error){
      print(error.toString());
    });
  }

}