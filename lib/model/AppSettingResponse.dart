import 'package:wcart/model/AppSettings.dart';

class AppSettingResponse {
  String? status;
  AppSettings? appSettings;
  String? message;

  AppSettingResponse({this.status, this.appSettings, this.message});

  AppSettingResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    appSettings = json['appSettings'] != null
        ? new AppSettings.fromJson(json['appSettings'])
        : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.appSettings != null) {
      data['appSettings'] = this.appSettings?.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}