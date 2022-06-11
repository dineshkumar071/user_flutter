class OtpDetails {
  int? otpid;
  String? phoneNo;
  String? mobilenumber;
  String? otpcode;
  String? created;

  OtpDetails(
      {this.otpid,
        this.phoneNo,
        this.mobilenumber,
        this.otpcode,
        this.created});

  OtpDetails.fromJson(Map<String, dynamic> json) {
    otpid = json['otpid'];
    phoneNo = json['phone_no'];
    mobilenumber = json['mobilenumber'];
    otpcode = json['otpcode'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['otpid'] = this.otpid;
    data['phone_no'] = this.phoneNo;
    data['mobilenumber'] = this.mobilenumber;
    data['otpcode'] = this.otpcode;
    data['created'] = this.created;
    return data;
  }
}