import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/add_products/cubit/states.dart';

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
    products.clear();
    emit(SaveProductsState());
  }


}
