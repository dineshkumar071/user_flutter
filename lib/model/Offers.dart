class Offers {
  int? tagid;
  String? tagname;
  String? tagslug;
  int? status;
  int? tagtype;
  String? tagbanner;
  String? created;
  String? updated;

  Offers(
      {this.tagid,
        this.tagname,
        this.tagslug,
        this.status,
        this.tagtype,
        this.tagbanner,
        this.created,
        this.updated});

  Offers.fromJson(Map<String, dynamic> json) {
    tagid = json['tagid'];
    tagname = json['tagname'];
    tagslug = json['tagslug'];
    status = json['status'];
    tagtype = json['tagtype'];
    tagbanner = json['tagbanner'];
    created = json['created'];
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tagid'] = this.tagid;
    data['tagname'] = this.tagname;
    data['tagslug'] = this.tagslug;
    data['status'] = this.status;
    data['tagtype'] = this.tagtype;
    data['tagbanner'] = this.tagbanner;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}