class CategoryDatabaseModel {
  int catdb_id;
  String catdb_plantName;
  String catdb_plantImage;
  String catdb_price;
  String catdb_oldPrice;
  String catdb_discount;
  String catdb_rating;
  String catdb_scientificName;
  String catdb_category;
  String catdb_tags;
  String catdb_dimensions;
  String catdb_watering;
  String catdb_description;
  int catdb_favorite;

  CategoryDatabaseModel({
    required this.catdb_id,
    required this.catdb_plantName,
    required this.catdb_plantImage,
    required this.catdb_price,
    required this.catdb_oldPrice,
    required this.catdb_discount,
    required this.catdb_rating,
    required this.catdb_scientificName,
    required this.catdb_category,
    required this.catdb_tags,
    required this.catdb_dimensions,
    required this.catdb_watering,
    required this.catdb_description,
    required this.catdb_favorite,
  });

  factory CategoryDatabaseModel.fromMap({required Map data}) {
    return CategoryDatabaseModel(
      catdb_id: data['catdb_id'],
      catdb_plantName: data['catdb_plantName'],
      catdb_plantImage: data['catdb_plantImage'],
      catdb_price: data['catdb_price'],
      catdb_oldPrice: data['catdb_oldPrice'],
      catdb_discount: data['catdb_discount'],
      catdb_rating: data['catdb_rating'],
      catdb_scientificName: data['catdb_scientificName'],
      catdb_category: data['catdb_category'],
      catdb_tags: data['catdb_tags'],
      catdb_dimensions: data['catdb_dimensions'],
      catdb_watering: data['catdb_watering'],
      catdb_description: data['catdb_description'],
      catdb_favorite: data['catdb_favorite'],
    );
  }
}
