class Categories {
  int? procatid;
  int? addedby;
  String? procatname;
  String? procatslug;
  String? procatimage;
  int? status;
  String? createdtime;
  String? updatedtime;

  Categories(
      {this.procatid,
        this.addedby,
        this.procatname,
        this.procatslug,
        this.procatimage,
        this.status,
        this.createdtime,
        this.updatedtime});

  Categories.fromJson(Map<String, dynamic> json) {
    procatid = json['procatid'];
    addedby = json['addedby'];
    procatname = json['procatname'];
    procatslug = json['procatslug'];
    procatimage = json['procatimage'];
    status = json['status'];
    createdtime = json['createdtime'];
    updatedtime = json['updatedtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['procatid'] = this.procatid;
    data['addedby'] = this.addedby;
    data['procatname'] = this.procatname;
    data['procatslug'] = this.procatslug;
    data['procatimage'] = this.procatimage;
    data['status'] = this.status;
    data['createdtime'] = this.createdtime;
    data['updatedtime'] = this.updatedtime;
    return data;
  }
}