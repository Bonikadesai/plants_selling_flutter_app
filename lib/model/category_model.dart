class CategoryModel {
  int id;
  String plantName;
  String plantImage;
  String price;
  String oldPrice;
  String discount;
  String rating;
  String scientificName;
  String category;
  String tags;
  String dimensions;
  String watering;
  String description;
  int favorite;

  CategoryModel({
    required this.id,
    required this.plantName,
    required this.plantImage,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.rating,
    required this.scientificName,
    required this.category,
    required this.tags,
    required this.dimensions,
    required this.watering,
    required this.description,
    required this.favorite,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> data) {
    return CategoryModel(
      id: data['id'],
      plantName: data['plant-name'],
      plantImage: data['plant-image'],
      price: data['price'],
      oldPrice: data['old-price'],
      discount: data['discount'],
      rating: data['rating'],
      scientificName: data['scientific-name'],
      category: data['category'],
      tags: data['tags'],
      dimensions: data['dimensions'],
      watering: data['watering'],
      description: data['description'],
      favorite: data['favorite'],
    );
  }
}
