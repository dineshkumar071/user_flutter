import 'package:wcart/model/OtpDetails.dart';

class SignInWithPhoneResponse {
  String? status;
  String? message;
  OtpDetails? otpDetails;

  SignInWithPhoneResponse({this.status, this.message, this.otpDetails});

  SignInWithPhoneResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    otpDetails = json['otpDetails'] != null
        ? new OtpDetails.fromJson(json['otpDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.otpDetails != null) {
      data['otpDetails'] = this.otpDetails?.toJson();
    }
    return data;
  }
}