import 'package:wcart/model/Homebanner.dart';

class BannerResponse {
  String? status;
  List<Homebanners>? homebanners;
  String? message;

  BannerResponse({this.status, this.homebanners, this.message});

  BannerResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['homebanners'] != null) {
      homebanners =  <Homebanners>[];
      json['homebanners'].forEach((v) {
        homebanners?.add(new Homebanners.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.homebanners != null) {
      data['homebanners'] = this.homebanners?.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}