class UserDetails {
  int? id;
  String? userid;
  int? status;
  String? name;
  String? emailId;
  String? phone;
  String? countryCode;
  String? password;
  String? profile;
  int? registertype;
  String? devicetype;
  String? devicetoken;
  String? dob;
  int? gender;
  String? googleid;
  String? facebookid;
  String? emailverificationcode;
  String? resetcode;
  String? created;
  String? updated;
  String? profileurl;
  String? verification;

  UserDetails(
      {this.id,
        this.userid,
        this.status,
        this.name,
        this.emailId,
        this.phone,
        this.countryCode,
        this.password,
        this.profile,
        this.registertype,
        this.devicetype,
        this.devicetoken,
        this.dob,
        this.gender,
        this.googleid,
        this.facebookid,
        this.emailverificationcode,
        this.resetcode,
        this.created,
        this.updated,
        this.profileurl,
        this.verification});

  UserDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    status = json['status'];
    name = json['name'];
    emailId = json['email_id'];
    phone = json['phone'];
    countryCode = json['country_code'];
    password = json['password'];
    profile = json['profile'];
    registertype = json['registertype'];
    devicetype = json['devicetype'];
    devicetoken = json['devicetoken'];
    dob = json['dob'];
    gender = json['gender'];
    googleid = json['googleid'];
    facebookid = json['facebookid'];
    emailverificationcode = json['emailverificationcode'];
    resetcode = json['resetcode'];
    created = json['created'];
    updated = json['updated'];
    profileurl = json['profileurl'];
    verification = json['verification'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userid'] = this.userid;
    data['status'] = this.status;
    data['name'] = this.name;
    data['email_id'] = this.emailId;
    data['phone'] = this.phone;
    data['country_code'] = this.countryCode;
    data['password'] = this.password;
    data['profile'] = this.profile;
    data['registertype'] = this.registertype;
    data['devicetype'] = this.devicetype;
    data['devicetoken'] = this.devicetoken;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['googleid'] = this.googleid;
    data['facebookid'] = this.facebookid;
    data['emailverificationcode'] = this.emailverificationcode;
    data['resetcode'] = this.resetcode;
    data['created'] = this.created;
    data['updated'] = this.updated;
    data['profileurl'] = this.profileurl;
    data['verification'] = this.verification;
    return data;
  }
}