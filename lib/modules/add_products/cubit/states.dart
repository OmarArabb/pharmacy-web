abstract class AddProductsStates{}

class AddProductsInitialStates extends AddProductsStates{}

class AddProductState extends AddProductsStates{}

class SaveProductsLoadingState extends AddProductsStates{}
class SaveProductsSuccessState extends AddProductsStates{}
class SaveProductsErrorState extends AddProductsStates{
  final String errMessage;

  SaveProductsErrorState(this.errMessage);

}

