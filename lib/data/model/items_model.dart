class ItemsModel {
  int? itemId;
  String? itemNameAr;
  String? itemNameEn;
  String? itemDescriptionAr;
  String? itemDescriptionEn;
  String? itemImage;
  int? itemPrice;
  int? itemCount;
  int? itemDiscount;
  String? itemTime;
  int? itemHide;
  int? itemCategory;

  ItemsModel(
      {this.itemId,
      this.itemNameAr,
      this.itemNameEn,
      this.itemDescriptionAr,
      this.itemDescriptionEn,
      this.itemImage,
      this.itemPrice,
      this.itemCount,
      this.itemDiscount,
      this.itemTime,
      this.itemHide,
      this.itemCategory});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    itemNameAr = json['item_name_ar'];
    itemNameEn = json['item_name_en'];
    itemDescriptionAr = json['item_description_ar'];
    itemDescriptionEn = json['item_description_en'];
    itemImage = json['item_image'];
    itemPrice = json['item_price'];
    itemCount = json['item_count'];
    itemDiscount = json['item_discount'];
    itemTime = json['item_time'];
    itemHide = json['item_hide'];
    itemCategory = json['item_category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this.itemId;
    data['item_name_ar'] = this.itemNameAr;
    data['item_name_en'] = this.itemNameEn;
    data['item_description_ar'] = this.itemDescriptionAr;
    data['item_description_en'] = this.itemDescriptionEn;
    data['item_image'] = this.itemImage;
    data['item_price'] = this.itemPrice;
    data['item_count'] = this.itemCount;
    data['item_discount'] = this.itemDiscount;
    data['item_time'] = this.itemTime;
    data['item_hide'] = this.itemHide;
    data['item_category'] = this.itemCategory;
    return data;
  }
}
