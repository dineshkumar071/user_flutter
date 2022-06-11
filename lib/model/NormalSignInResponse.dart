import 'package:wcart/model/UserDetails.dart';

class NormalSignInResponse {
  String? status;
  String? message;
  UserDetails? userDetails;

  NormalSignInResponse({this.status, this.message, this.userDetails});

  NormalSignInResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userDetails = json['userDetails'] != null
        ? new UserDetails.fromJson(json['userDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.userDetails != null) {
      data['userDetails'] = this.userDetails?.toJson();
    }
    return data;
  }


}