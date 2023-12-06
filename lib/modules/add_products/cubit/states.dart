abstract class AddProductsStates{}

class AddProductsInitialStates extends AddProductsStates{}

class ChangeIndexOfTextFieldState extends AddProductsStates{

  final List<bool> isFoucs;

  ChangeIndexOfTextFieldState(this.isFoucs);
}

class AddProductState extends AddProductsStates{
  final List<Map<String,dynamic>> products ;

  AddProductState({required this.products});

}