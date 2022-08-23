class Product{
  late String id;
  late int price;
  late String title;
  String? description;
  late String categoryId;
  late List<String>images;
  late String createdDate;
  late  String size;
  double? discount;
  late String companyName;

  Product({required this.id, required this.title, required this.size, required this.price, required this.images, required this.categoryId, required this.companyName, required this.createdDate, this.description, this.discount});

  Product.fromJson(Map<String, dynamic>json){
    id = json["id"];
    price = json["price"];
    title = json["title"];
    description = json["description"];
    categoryId = json["categoryId"];
    images = json["images"];
    createdDate = json["createdDate"];
    size = json["size"];
    companyName = json["companyName"];
    discount = json["discount"];
  }

  Map<String,dynamic> toJson() {
    Map<String,dynamic> map = {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'categoryId': categoryId,
      'images': images,
      'createdDate': createdDate,
      'size': size,
      'companyName': companyName,
      'discount': discount,
    };
    return map;
  }

  
}