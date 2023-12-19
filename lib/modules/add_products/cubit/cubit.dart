import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/add_products/cubit/states.dart';
import 'package:pharmacy_project/shared/network/dio_helper.dart';

class AddProductsCubit extends Cubit<AddProductsStates> {
  AddProductsCubit() : super(AddProductsInitialStates());

  static AddProductsCubit get(context) => BlocProvider.of(context);

  String image = '';


  List<Map<String,dynamic>> products = [];

  Future<void> addProduct(Map<String,dynamic> map) async {
    image = '';
    products.add(map);
    emit(AddProductState());
  }


  Future<void> saveProducts()async {
    // emit(SaveProductsLoadingState());
    // DioHelper.saveData(endPoint: '', data: products).then((value){
    //   products.clear();
    //   emit(SaveProductsSuccessState());
    // }).catchError((error){
    //   emit(SaveProductsErrorState(error));
    // });

    products.clear();
    emit(SaveProductsLoadingState());
  }


}
