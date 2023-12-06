import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/add_products/cubit/states.dart';

class AddProductsCubit extends Cubit<AddProductsStates> {
  AddProductsCubit() : super(AddProductsInitialStates());

  static AddProductsCubit get(context) => BlocProvider.of(context);

  // List<bool> isFoucs = [
  //   true,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false,
  // ];
  // int currentindex = 0;
  //
  // void changeAutoFoucs(int index) {
  //
  //   isFoucs.fillRange(0, 6, false);
  //   if (index == 6) {
  //     return;
  //   }
  //   currentindex += 1 ;
  //   isFoucs[currentindex] = true;
  //
  //   emit(ChangeIndexOfTextFieldState(isFoucs));
  //
  // }
}
