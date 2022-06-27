import 'package:dart_grpc_api/src/generated/groceries.pb.dart';

abstract class BaseCategoriesService {
  Category? getCategoryByName(String name);
  Category? getCategoryById(int id);

  List<Category>? getCategories();

  Category createCategory(Category category);
  Category? updateCategory(Category category);
  Empty? deleteCategory(Category category);
}
