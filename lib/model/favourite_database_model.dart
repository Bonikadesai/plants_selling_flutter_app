class favouriteDatabaseModel {
  int dbfav_id;
  String dbfav_plantName;
  String dbfav_plantImage;
  String dbfav_price;
  String dbfav_oldPrice;
  String dbfav_discount;
  String dbfav_rating;

  favouriteDatabaseModel({
    required this.dbfav_id,
    required this.dbfav_plantName,
    required this.dbfav_plantImage,
    required this.dbfav_price,
    required this.dbfav_oldPrice,
    required this.dbfav_discount,
    required this.dbfav_rating,
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
    );
  }
}
