import 'package:wcart/model/UserDetails.dart';

class UserViewModel{
  UserDetails? userResponse ;

  UserViewModel({UserDetails?  user}) : userResponse = user;
  String? get userName {
    return userResponse?.name;
  }
  int? get id{
    return userResponse?.id;
  }
  String? get userId{
    return userResponse?.userid;
  }
  String? get email{
    return userResponse?.emailId;
  }
  String? get phoneNumber{
    return userResponse?.phone;
  }
}