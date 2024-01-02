/// status : 1
/// message : "succes"
/// data : [{"id":1,"products_id":1,"warehouse_id":1,"Quantity":22,"created_at":"2023-12-22 15:20:20","updated_at":"2023-12-22 15:20:20","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Price":1,"image":"/images/ss.jpg","marketing_name":"ss","scientific_name":"sdf","arabic_name":"شسشسي","exp_date":"2022-02-02"},{"id":2,"products_id":1,"warehouse_id":1,"Quantity":22,"created_at":"2023-12-22 15:20:20","updated_at":"2023-12-22 15:20:20","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Price":1,"image":"/images/ss.jpg","marketing_name":"ss","scientific_name":"sdf","arabic_name":"شسشسي","exp_date":"2022-02-02"},{"id":3,"products_id":1,"warehouse_id":1,"Quantity":22,"created_at":"2023-12-22 15:20:20","updated_at":"2023-12-22 15:20:20","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Price":1,"image":"/images/ss.jpg","marketing_name":"ss","scientific_name":"sdf","arabic_name":"شسشسي","exp_date":"2022-02-02"},{"id":4,"products_id":4,"warehouse_id":1,"Quantity":4,"created_at":"2023-12-22 17:05:20","updated_at":"2023-12-22 17:05:20","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Price":1,"image":"/images/asddasd.jpg","marketing_name":"asddasd","scientific_name":"sdf","arabic_name":"شسيشسي","exp_date":"2022-02-02"},{"id":5,"products_id":5,"warehouse_id":1,"Quantity":2,"created_at":"2023-12-23 17:05:49","updated_at":"2023-12-24 15:48:06","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Price":1,"image":"/images/.jpg","marketing_name":"ppsppp","scientific_name":"sdf","arabic_name":"سيسيسييس","exp_date":"2022-02-02"},{"id":6,"products_id":6,"warehouse_id":1,"Quantity":1,"created_at":"2023-12-24 16:44:54","updated_at":"2023-12-24 16:44:54","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Price":1,"image":"/images/aaaaaaaaaaa.jpg","marketing_name":"aaaaaaaaaaa","scientific_name":"sdf","arabic_name":"سيسيسييس","exp_date":"2022-02-02"},{"id":7,"products_id":7,"warehouse_id":1,"Quantity":1,"created_at":"2023-12-24 16:44:54","updated_at":"2023-12-24 16:44:54","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Price":1,"image":"/images/ddddddd.jpg","marketing_name":"ddddddd","scientific_name":"oo","arabic_name":"نننن","exp_date":"2022-02-02"}]

class ProductsModel {
  ProductsModel({
      this.status, 
      this.message, 
      this.data,});

  ProductsModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
  late int? status;
  late String? message;
  List<Data>? data ;


}

/// id : 1
/// products_id : 1
/// warehouse_id : 1
/// Quantity : 22
/// created_at : "2023-12-22 15:20:20"
/// updated_at : "2023-12-22 15:20:20"
/// made_by_name : "IBN SINA"
/// made_by_Arabic_name : "ابن سينا"
/// Category_name : "Painkillers"
/// Arabic_Category_name : "مسكنات"
/// Price : 1
/// image : "/images/ss.jpg"
/// marketing_name : "ss"
/// scientific_name : "sdf"
/// arabic_name : "شسشسي"
/// exp_date : "2022-02-02"

class Data {
  Data({
      this.id, 
      this.productsId, 
      this.warehouseId, 
      this.quantity, 
      this.createdAt, 
      this.updatedAt, 
      this.madeByName, 
      this.madeByArabicName, 
      this.categoryName, 
      this.arabicCategoryName, 
      this.price, 
      this.image, 
      this.marketingName, 
      this.scientificName, 
      this.arabicName, 
      this.expDate,});

  late int? id;
  late int? productsId;
  late int? warehouseId;
  late int? quantity;
  late String? createdAt;
  late String? updatedAt;
  late String? madeByName;
  late String? madeByArabicName;
  late String? categoryName;
  late String? arabicCategoryName;
  late int? price;
  late String? image;
  late String? marketingName;
  late String? scientificName;
  late String? arabicName;
  late String? expDate;

  Data.fromJson(dynamic json) {
    id = json['id'];
    productsId = json['products_id'];
    warehouseId = json['warehouse_id'];
    quantity = json['Quantity'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    madeByName = json['made_by_name'];
    madeByArabicName = json['made_by_Arabic_name'];
    categoryName = json['Category_name'];
    arabicCategoryName = json['Arabic_Category_name'];
    price = json['Price'];
    image = json['image'];
    marketingName = json['marketing_name'];
    scientificName = json['scientific_name'];
    arabicName = json['arabic_name'];
    expDate = json['exp_date'];
  }


}