/// status : 1
/// message : "succes"
/// data : [{"id":3,"Email_address":"na@gmail.com","Phone_number":"0934583745","created_at":"2023-12-31 09:42:47","updated_at":"2023-12-31 09:42:47","Full_name":"omar","Pharmacy_name":"alnoor","Pharmacy_address":"8 march","City_name":"Damascus","City_Arabic_name":"دمشق"},{"id":4,"Email_address":"hasngaah@gmail.com","Phone_number":"0913340500","created_at":"2023-12-31 10:13:36","updated_at":"2023-12-31 10:13:36","Full_name":"hsaaan","Pharmacy_name":"emnmm","Pharmacy_address":"sssssssssssssssssss","City_name":"Damascus","City_Arabic_name":"دمشق"}]

class ProfilesDataModel {
  ProfilesDataModel({
      this.status, 
      this.message, 
      this.data,});

  ProfilesDataModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  int? status;
  String? message;
  List<Data>? data;

}

/// id : 3
/// Email_address : "na@gmail.com"
/// Phone_number : "0934583745"
/// created_at : "2023-12-31 09:42:47"
/// updated_at : "2023-12-31 09:42:47"
/// Full_name : "omar"
/// Pharmacy_name : "alnoor"
/// Pharmacy_address : "8 march"
/// City_name : "Damascus"
/// City_Arabic_name : "دمشق"

class Data {
  Data({
      this.id, 
      this.emailAddress, 
      this.phoneNumber, 
      this.createdAt, 
      this.updatedAt, 
      this.fullName, 
      this.pharmacyName, 
      this.pharmacyAddress, 
      this.cityName, 
      this.cityArabicName,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    emailAddress = json['Email_address'];
    phoneNumber = json['Phone_number'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    fullName = json['Full_name'];
    pharmacyName = json['Pharmacy_name'];
    pharmacyAddress = json['Pharmacy_address'];
    cityName = json['City_name'];
    cityArabicName = json['City_Arabic_name'];
  }
  int? id;
  String? emailAddress;
  String? phoneNumber;
  String? createdAt;
  String? updatedAt;
  String? fullName;
  String? pharmacyName;
  String? pharmacyAddress;
  String? cityName;
  String? cityArabicName;

}