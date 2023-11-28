class PlantDatabaseModel {
  int categoryId;
  String plantCategory;
  String categoryIcon;

  PlantDatabaseModel({
    required this.categoryId,
    required this.plantCategory,
    required this.categoryIcon,
  });

  factory PlantDatabaseModel.fromMap({required Map data}) {
    return PlantDatabaseModel(
      categoryId: data['category_id'],
      plantCategory: data['plant_category'],
      categoryIcon: String.fromCharCode(data['category_icon']),
    );
  }
}
