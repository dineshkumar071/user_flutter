
import 'package:email_validator/email_validator.dart';

class Utility{
  static final Utility _singleton = Utility._internal();

  factory Utility() {
    return _singleton;
  }

  Utility._internal();
  bool isValidEmail(String email){
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    return emailValid;
  }

}