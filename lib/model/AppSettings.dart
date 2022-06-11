class AppSettings {
  String? appWLogo;
  String? appDLogo;
  String? splashScreen;
  String? baseurl;
  String? globalColor;
  String? baseColor;
  String? primaryColor;
  String? secondaryColor;
  String? infoColor;
  String? alertColor;
  String? successColor;
  String? warningColor;

  AppSettings(
      {
        this.appWLogo,
        this.appDLogo,
        this.splashScreen,
        this.baseurl,
        this.globalColor,
        this.baseColor,
        this.primaryColor,
        this.secondaryColor,
        this.infoColor,
        this.alertColor,
        this.successColor,
        this.warningColor});

  AppSettings.fromJson(Map<String, dynamic> json) {
    appWLogo = json['app_w_logo'];
    appDLogo = json['app_d_logo'];
    splashScreen = json['splash_screen'];
    baseurl = json['baseurl'];
    globalColor = json['global_color'];
    baseColor = json['base_color'];
    primaryColor = json['primary_color'];
    secondaryColor = json['secondary_color'];
    infoColor = json['info_color'];
    alertColor = json['alert_color'];
    successColor = json['success_color'];
    warningColor = json['warning_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['app_w_logo'] = this.appWLogo;
    data['app_d_logo'] = this.appDLogo;
    data['splash_screen'] = this.splashScreen;
    data['baseurl'] = this.baseurl;
    data['global_color'] = this.globalColor;
    data['base_color'] = this.baseColor;
    data['primary_color'] = this.primaryColor;
    data['secondary_color'] = this.secondaryColor;
    data['info_color'] = this.infoColor;
    data['alert_color'] = this.alertColor;
    data['success_color'] = this.successColor;
    data['warning_color'] = this.warningColor;
    return data;
  }
}