import 'package:wcart/model/Deals.dart';

class DealResponse {
  String? status;
  List<Deals>? deals;
  String? message;

  DealResponse({this.status, this.deals, this.message});

  DealResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['deals'] != null) {
      deals = <Deals>[];
      json['deals'].forEach((v) {
        deals?.add(new Deals.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.deals != null) {
      data['deals'] = this.deals?.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}