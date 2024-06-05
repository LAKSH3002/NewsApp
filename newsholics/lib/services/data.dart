import 'package:newsholics/models/categorymodel.dart';

List<CategoryModel> getcategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = "Business";
  categoryModel.image = 'Images/business.jpeg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = "Entertainment";
  categoryModel.image = 'Images/entertainment.jpeg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = "General";
  categoryModel.image = 'Images/general.jpeg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = "Health";
  categoryModel.image = 'Images/health.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = "Sports";
  categoryModel.image = 'Images/sports.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}
