import 'package:wcart/model/Categories.dart';

class CategoryResponse {
  String? status;
  List<Categories>? categories;
  String? message;

  CategoryResponse({this.status, this.categories, this.message});

  CategoryResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories?.add(new Categories.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.categories != null) {
      data['categories'] = this.categories?.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}