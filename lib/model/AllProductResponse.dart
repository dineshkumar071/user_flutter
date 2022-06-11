import 'package:wcart/model/Products.dart';

class AllProductResponse {
  String? status;
  List<Products>? products;
  String? userId;
  String? message;

  AllProductResponse({this.status, this.products, this.userId, this.message});

  AllProductResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['Products'] != null) {
      products = <Products>[];
      json['Products'].forEach((v) {
        products?.add(new Products.fromJson(v));
      });
    }
    userId = json['user_id'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.products != null) {
      data['Products'] = this.products?.map((v) => v.toJson()).toList();
    }
    data['user_id'] = this.userId;
    data['message'] = this.message;
    return data;
  }
}