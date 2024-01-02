/// status : 1
/// message : "succes"
/// data : [{"pharmacy_id":1,"order_id":1,"status":3,"payment_status":2,"products":[{"id":1,"Price":3000,"category_id":1,"made_by_id":5,"image":"/images/UNI BRUFEN.jpg","marketing_name":"UNI BRUFEN","scientific_name":"BRUFEN","arabic_name":"بروفين","exp_date":"2022-02-02","created_at":"2023-12-31 11:24:54","updated_at":"2023-12-31 11:24:54","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Quantity":2,"PriceAllproducts":6000}],"PriceAllproducts":6000}]

class OrderMoodel {
  OrderMoodel({
      this.status, 
      this.message, 
      this.data,});

  OrderMoodel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(OrderData.fromJson(v));
      });
    }
  }
  late int? status;
  String? message;
  List<OrderData>? data;

}

/// pharmacy_id : 1
/// order_id : 1
/// status : 3
/// payment_status : 2
/// products : [{"id":1,"Price":3000,"category_id":1,"made_by_id":5,"image":"/images/UNI BRUFEN.jpg","marketing_name":"UNI BRUFEN","scientific_name":"BRUFEN","arabic_name":"بروفين","exp_date":"2022-02-02","created_at":"2023-12-31 11:24:54","updated_at":"2023-12-31 11:24:54","made_by_name":"IBN SINA","made_by_Arabic_name":"ابن سينا","Category_name":"Painkillers","Arabic_Category_name":"مسكنات","Quantity":2,"PriceAllproducts":6000}]
/// PriceAllproducts : 6000

class OrderData {
  OrderData({
      this.pharmacyId, 
      this.orderId, 
      this.status, 
      this.paymentStatus, 
      this.products, 
      this.priceAllproducts,});

  OrderData.fromJson(dynamic json) {
    pharmacyId = json['pharmacy_id'];
    orderId = json['order_id'];
    status = json['status'];
    paymentStatus = json['payment_status'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
    priceAllproducts = json['PriceAllproducts'];
  }
  int? pharmacyId;
  int? orderId;
  int? status;
  int? paymentStatus;
  List<Products>? products;
  int? priceAllproducts;

}

/// id : 1
/// Price : 3000
/// category_id : 1
/// made_by_id : 5
/// image : "/images/UNI BRUFEN.jpg"
/// marketing_name : "UNI BRUFEN"
/// scientific_name : "BRUFEN"
/// arabic_name : "بروفين"
/// exp_date : "2022-02-02"
/// created_at : "2023-12-31 11:24:54"
/// updated_at : "2023-12-31 11:24:54"
/// made_by_name : "IBN SINA"
/// made_by_Arabic_name : "ابن سينا"
/// Category_name : "Painkillers"
/// Arabic_Category_name : "مسكنات"
/// Quantity : 2
/// PriceAllproducts : 6000

class Products {
  Products({
      this.id, 
      this.price, 
      this.categoryId, 
      this.madeById, 
      this.image, 
      this.marketingName, 
      this.scientificName, 
      this.arabicName, 
      this.expDate, 
      this.createdAt, 
      this.updatedAt, 
      this.madeByName, 
      this.madeByArabicName, 
      this.categoryName, 
      this.arabicCategoryName, 
      this.quantity, 
      this.priceAllproducts,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    price = json['Price'];
    categoryId = json['category_id'];
    madeById = json['made_by_id'];
    image = json['image'];
    marketingName = json['marketing_name'];
    scientificName = json['scientific_name'];
    arabicName = json['arabic_name'];
    expDate = json['exp_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    madeByName = json['made_by_name'];
    madeByArabicName = json['made_by_Arabic_name'];
    categoryName = json['Category_name'];
    arabicCategoryName = json['Arabic_Category_name'];
    quantity = json['Quantity'];
    priceAllproducts = json['PriceAllproducts'];
  }
  int? id;
  int? price;
  int? categoryId;
  int? madeById;
  String? image;
  String? marketingName;
  String? scientificName;
  String? arabicName;
  String? expDate;
  String? createdAt;
  String? updatedAt;
  String? madeByName;
  String? madeByArabicName;
  String? categoryName;
  String? arabicCategoryName;
  int? quantity;
  int? priceAllproducts;


}