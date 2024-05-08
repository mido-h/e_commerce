class CategoriesModel {
  int? categoryId;
  String? categoryNameEN;
  String? categoryNameAR;
  String? categoryDate;
  String? categoryImage;

  CategoriesModel(
      {this.categoryId,
      this.categoryNameEN,
      this.categoryNameAR,
      this.categoryDate,
      this.categoryImage});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryNameEN = json['category_name_EN'];
    categoryNameAR = json['category_name_AR'];
    categoryDate = json['category_date'];
    categoryImage = json['category_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['category_name_EN'] = this.categoryNameEN;
    data['category_name_AR'] = this.categoryNameAR;
    data['category_date'] = this.categoryDate;
    data['category_image'] = this.categoryImage;
    return data;
  }
}
