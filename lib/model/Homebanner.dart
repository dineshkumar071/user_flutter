class Homebanners {
  int? bannerid;
  String? bannerImage;
  String? bannerLink;
  int? type;
  int? status;
  String? created;
  String? updated;

  Homebanners(
      {this.bannerid,
        this.bannerImage,
        this.bannerLink,
        this.type,
        this.status,
        this.created,
        this.updated});

  Homebanners.fromJson(Map<String, dynamic> json) {
    bannerid = json['bannerid'];
    bannerImage = json['banner_image'];
    bannerLink = json['banner_link'];
    type = json['type'];
    status = json['status'];
    created = json['created'];
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bannerid'] = this.bannerid;
    data['banner_image'] = this.bannerImage;
    data['banner_link'] = this.bannerLink;
    data['type'] = this.type;
    data['status'] = this.status;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}