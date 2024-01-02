import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/modules/products/cubit/states.dart';
import 'package:pharmacy_project/modules/products/models/ProductsModel.dart';
import 'package:pharmacy_project/shared/network/dio_helper.dart';

class GetProductsCubit extends Cubit<GetProductsStates> {
  GetProductsCubit() : super(GetProductsInitialState());

  static GetProductsCubit get(context) => BlocProvider.of(context);
  ProductsModel? productsModel;
  String? name , categoryData;
  List<String>categoryName = [];
  List<dynamic> category = [];

  Future<void> getProducts() async {
    emit(GetProductsLoadingState());
    await DioHelper.getData(url: 'getAllProductsToWarehouse/1').then((value) {
      productsModel = ProductsModel.fromJson(value.data);
      emit(GetProductsSuccessState());
    }).catchError((error) {
      emit(GetProductsErrorState());
      print(error.toString());
    });
  }

  Future<void> searchProducts() async {
    emit(GetProductsLoadingState());
    await DioHelper.getData(url: 'search_product', query: {
      "category": categoryData,
      "name": name,
    }).then((value) {
      productsModel = ProductsModel.fromJson(value.data);
      emit(GetProductsSuccessState());
      name = null;
      categoryData = null;
    }).catchError((error) {
      emit(GetProductsErrorState());
      print(error.toString());
    });
  }

  Future<void> getCategory(context) async {
    categoryName.clear();
    categoryName.add(S.of(context).All);
    DioHelper.getData(url: 'getAllCategorys').then((value) {
      category = value.data!['data'];
      for (var element in category) {
        categoryName.add(element[S.of(context).categoryName]);
      }
      print(categoryName);
    });
  }
}
