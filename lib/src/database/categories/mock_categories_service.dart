import 'package:dart_grpc_api/dart_grpc_api.dart';
import 'package:dart_grpc_api/src/database/categories/base_categories_service.dart';
import 'package:dart_grpc_api/src/generated/groceries.pb.dart';

class MockCategoryService extends BaseCategoriesService {
  @override
  Category? getCategoryByName(String name) {
    throw UnimplementedError();
  }

  @override
  Category? getCategoryById(int id) {
    throw UnimplementedError();
  }

  @override
  List<Category> getCategories() {
    throw UnimplementedError();
  }

  @override
  Category createCategory(Category category) {
    categories.add({'id': category.id, 'name': category.name});

    return category;
  }

  @override
  Category? updateCategory(Category category) {
    throw UnimplementedError();
  }

  @override
  Empty? deleteCategory(Category category) {
    throw UnimplementedError();
  }
}
