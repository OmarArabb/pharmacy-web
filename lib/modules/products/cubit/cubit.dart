import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/products/cubit/states.dart';
import 'package:pharmacy_project/modules/products/models/ProductsModel.dart';
import 'package:pharmacy_project/shared/network/dio_helper.dart';

class GetProductsCubit extends Cubit<GetProductsStates> {
  GetProductsCubit() : super(GetProductsInitialState());

  static GetProductsCubit get(context) => BlocProvider.of(context);
  ProductsModel? productsModel;

  Future<void> getProducts() async {
    emit(GetProductsLoadingState());
    await DioHelper.getData(url: 'getAllProductsToWarehouse/1').then((value) {
      emit(GetProductsSuccessState());
      productsModel = ProductsModel.fromJson(value.data);
      print(value.data);
    }).catchError((error) {
      emit(GetProductsErrorState());
      print(error.toString());
    });
  }
}
