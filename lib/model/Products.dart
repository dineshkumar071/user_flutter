class Products {
  int? productid;
  int? addedby;
  String? name;
  String? slug;
  int? producttype;
  int? status;
  String? sku;
  String? image;
  String? thumbnail;
  String? smallimage;
  String? gallery1;
  String? gallery2;
  String? gallery3;
  String? gallery4;
  String? video;
  int? procatid;
  int? proBrand;
  int? price;
  int? saleprice;
  int? specialprice;
  String? startdate;
  String? enddate;
  int? quantity;
  String? description;
  String? longdescription;
  int? trending;
  String? createdtime;
  String? updatedtime;
  String? minprice;
  String? maxprice;
  String? minsale;
  String? maxsale;
  int? wishlist;
  String? imageUrl;

  Products(
      {this.productid,
        this.addedby,
        this.name,
        this.slug,
        this.producttype,
        this.status,
        this.sku,
        this.image,
        this.thumbnail,
        this.smallimage,
        this.gallery1,
        this.gallery2,
        this.gallery3,
        this.gallery4,
        this.video,
        this.procatid,
        this.proBrand,
        this.price,
        this.saleprice,
        this.specialprice,
        this.startdate,
        this.enddate,
        this.quantity,
        this.description,
        this.longdescription,
        this.trending,
        this.createdtime,
        this.updatedtime,
        this.minprice,
        this.maxprice,
        this.minsale,
        this.maxsale,
        this.wishlist,
        this.imageUrl});

  Products.fromJson(Map<String, dynamic> json) {
    productid = json['productid'];
    addedby = json['addedby'];
    name = json['name'];
    slug = json['slug'];
    producttype = json['producttype'];
    status = json['status'];
    sku = json['sku'];
    image = json['image'];
    thumbnail = json['thumbnail'];
    smallimage = json['smallimage'];
    gallery1 = json['gallery1'];
    gallery2 = json['gallery2'];
    gallery3 = json['gallery3'];
    gallery4 = json['gallery4'];
    video = json['video'];
    procatid = json['procatid'];
    proBrand = json['pro_brand'];
    price = json['price'];
    saleprice = json['saleprice'];
    specialprice = json['specialprice'];
    startdate = json['startdate'];
    enddate = json['enddate'];
    quantity = json['quantity'];
    description = json['description'];
    longdescription = json['longdescription'];
    trending = json['trending'];
    createdtime = json['createdtime'];
    updatedtime = json['updatedtime'];
    minprice = json['minprice'];
    maxprice = json['maxprice'];
    minsale = json['minsale'];
    maxsale = json['maxsale'];
    wishlist = json['wishlist'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productid'] = this.productid;
    data['addedby'] = this.addedby;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['producttype'] = this.producttype;
    data['status'] = this.status;
    data['sku'] = this.sku;
    data['image'] = this.image;
    data['thumbnail'] = this.thumbnail;
    data['smallimage'] = this.smallimage;
    data['gallery1'] = this.gallery1;
    data['gallery2'] = this.gallery2;
    data['gallery3'] = this.gallery3;
    data['gallery4'] = this.gallery4;
    data['video'] = this.video;
    data['procatid'] = this.procatid;
    data['pro_brand'] = this.proBrand;
    data['price'] = this.price;
    data['saleprice'] = this.saleprice;
    data['specialprice'] = this.specialprice;
    data['startdate'] = this.startdate;
    data['enddate'] = this.enddate;
    data['quantity'] = this.quantity;
    data['description'] = this.description;
    data['longdescription'] = this.longdescription;
    data['trending'] = this.trending;
    data['createdtime'] = this.createdtime;
    data['updatedtime'] = this.updatedtime;
    data['minprice'] = this.minprice;
    data['maxprice'] = this.maxprice;
    data['minsale'] = this.minsale;
    data['maxsale'] = this.maxsale;
    data['wishlist'] = this.wishlist;
    data['image_url'] = this.imageUrl;
    return data;
  }
}