import 'package:wcart/model/Offers.dart';

class OfferResponse {
  String? status;
  List<Offers>? offers;
  String? message;

  OfferResponse({this.status, this.offers, this.message});

  OfferResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['offers'] != null) {
      offers = <Offers>[];
      json['offers'].forEach((v) {
        offers?.add(new Offers.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.offers != null) {
      data['offers'] = this.offers?.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}
