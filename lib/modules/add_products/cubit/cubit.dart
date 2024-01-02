import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/modules/add_products/cubit/states.dart';
import 'package:pharmacy_project/shared/network/dio_helper.dart';

class AddProductsCubit extends Cubit<AddProductsStates> {
  AddProductsCubit() : super(AddProductsInitialStates());

  TextEditingController nameContoller = TextEditingController();
  TextEditingController arabicNameContoller = TextEditingController();
  TextEditingController scientificNameContoller = TextEditingController();
  TextEditingController categoryContoller = TextEditingController();
  TextEditingController factoryContoller = TextEditingController();
  TextEditingController expDateContoller = TextEditingController();
  TextEditingController quantityContoller = TextEditingController();
  TextEditingController priceContoller = TextEditingController();

  String image = '';
  int categoryId = 0;
  int factoryId = 0;

  List<dynamic> category = [];
  List<dynamic> factory = [];
  List<String> categoryName = [];
  List<String> factoryName = [];
  List<Map<String, dynamic>> products = [];


  /// Functions

  static AddProductsCubit get(context) => BlocProvider.of(context);

  Future<void> addProduct(Map<String, dynamic> map) async {
    image = '';
    products.add(map);
    emit(AddProductState());
  }

  void addProductToMap() {
    addProduct({
      "image": image,
      "marketing_name": nameContoller.text,
      "scientific_name": scientificNameContoller.text,
      "arabic_name" : arabicNameContoller.text,
      "Category_name": categoryContoller.text,
      "made_by_name": factoryContoller.text,
      "exp_date": expDateContoller.text,
      "Quantity": quantityContoller.text,
      "Price": priceContoller.text,
      "category_id" : categoryId,
      "made_by_id" : factoryId
    }).then((value) {
      image = '';
      arabicNameContoller.clear();
      nameContoller.clear();
      scientificNameContoller.clear();
      categoryContoller.clear();
      factoryContoller.clear();
      expDateContoller.clear();
      quantityContoller.clear();
      priceContoller.clear();
    });
  }

  void selectCategoryId(int id){
    categoryId = id + 1;
    print(categoryId);
  }

  void selectFactoryId(int id){
    factoryId = id + 1;
    print(factoryId);
  }

  Future<void> getCategory(context) async {
    categoryName.clear();
    DioHelper.getData(url: 'getAllCategorys').then((value) {
      category = value.data!['data'];
      for (var element in category) {
        categoryName.add(element[S.of(context).categoryName]);
      }
    });
  }

  Future<void> getFactory(context) async {
    factoryName.clear();
    DioHelper.getData(url: 'getAllMadeby').then((value) {
      factory = value.data!['data'];
      for (var element in factory) {
        factoryName.add(element[S.of(context).factoryName]);
      }
      print(factoryName);
    });
  }

  Future<void> saveProducts() async {
    emit(SaveProductsLoadingState());
    DioHelper.postData(url: 'create_product/1', data: products).then((value){
      emit(SaveProductsSuccessState());
      products.clear();
    }).catchError((error){
      print(error.toString());
      emit(SaveProductsErrorState(error.toString()));
    });

  }
}
