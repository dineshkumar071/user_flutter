import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wcart/model/NormalSignInResponse.dart';

class Repository {
  final String _baseUrl = "http://wcartnode.webnexs.org/userapi/";

 Future<NormalSignInResponse> emailLogin(String email ,String passWord) async {
    final responseJson;
    final response;
    try {
      responseJson = await http.post(Uri.parse(_baseUrl + 'email_login'),headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
        body: jsonEncode(<String, String>{
          "email_id": email,
          "password": passWord,
          "devicetoken": 'android',
        }),);
      response= NormalSignInResponse.fromJson(jsonDecode(responseJson.body));
      if(responseJson.statusCode == 200){
        print(response.userDetails.toString());
      }
    }catch(e){
      throw Exception('No Internet Connection');
    }
    return response;
  }
}