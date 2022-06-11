import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wcart/Repository/Repository.dart';
import 'package:wcart/Utility.dart';
import 'package:wcart/model/NormalSignInResponse.dart';
import 'package:wcart/sign-in/UserViewModel.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}
class SignInViewModel extends ChangeNotifier{
  LoadingStatus loadingStatus = LoadingStatus.searching;
  UserViewModel user = UserViewModel();



}