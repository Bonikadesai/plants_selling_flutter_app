class favouriteDatabaseModel {
  int dbfav_id;
  String dbfav_plantName;
  String dbfav_plantImage;
  String dbfav_price;
  String dbfav_oldPrice;
  String dbfav_discount;
  String dbfav_rating;
  String dbfav_scientificName;
  String dbfav_category;
  String dbfav_tags;
  String dbfav_dimensions;
  String dbfav_watering;
  String dbfav_description;

  favouriteDatabaseModel({
    required this.dbfav_id,
    required this.dbfav_plantName,
    required this.dbfav_plantImage,
    required this.dbfav_price,
    required this.dbfav_oldPrice,
    required this.dbfav_discount,
    required this.dbfav_rating,
    required this.dbfav_scientificName,
    required this.dbfav_category,
    required this.dbfav_tags,
    required this.dbfav_dimensions,
    required this.dbfav_watering,
    required this.dbfav_description,
  });

  factory favouriteDatabaseModel.fromMap({required Map data}) {
    return favouriteDatabaseModel(
      dbfav_id: data['dbfav_id'],
      dbfav_plantName: data['dbfav_plantName'],
      dbfav_plantImage: data['dbfav_plantImage'],
      dbfav_price: data['dbfav_price'],
      dbfav_oldPrice: data['dbfav_oldPrice'],
      dbfav_discount: data['dbfav_discount'],
      dbfav_rating: data['dbfav_rating'],
      dbfav_scientificName: data['dbfav_scientificName'],
      dbfav_category: data['dbfav_category'],
      dbfav_tags: data['dbfav_tags'],
      dbfav_dimensions: data['dbfav_dimensions'],
      dbfav_watering: data['dbfav_watering'],
      dbfav_description: data['dbfav_description'],
    );
  }
}
