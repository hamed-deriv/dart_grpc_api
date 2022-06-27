import 'package:grpc/grpc.dart';

import 'package:dart_grpc_api/dart_grpc_api.dart';

Future<void> main() async {
  final server = Server(
    [GroceriesService()],
    const <Interceptor>[],
    CodecRegistry(codecs: [GzipCodec(), IdentityCodec()]),
  );

  await server.serve(port: 8585);

  print('✅ Server listening on port ${server.port}...');
}

class GroceriesService extends GroceriesServiceBase {
  GroceriesService({
    BaseCategoriesService? categoriesService,
    BaseItemsService? itemsService,
  }) {
    _categoriesService = categoriesService ?? MockCategoryService();
    _itemsService = itemsService ?? MockItemService();
  }

  late final BaseCategoriesService _categoriesService;
  late final BaseItemsService _itemsService;

  @override
  Future<Category> createCategory(ServiceCall call, Category request) async =>
      _categoriesService.createCategory(request);

  @override
  Future<Item> createItem(ServiceCall call, Item request) {
    // TODO: implement createItem
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteCategory(ServiceCall call, Category request) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteItem(ServiceCall call, Item request) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<Categories> getAllCategories(ServiceCall call, Empty request) {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }

  @override
  Future<Items> getAllItems(ServiceCall call, Empty request) {
    // TODO: implement getAllItems
    throw UnimplementedError();
  }

  @override
  Future<Category> getCategory(ServiceCall call, Category request) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }

  @override
  Future<Item> getItem(ServiceCall call, Item request) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  Future<AllItemsOfCategory> getItemsByCategory(
      ServiceCall call, Category request) {
    // TODO: implement getItemsByCategory
    throw UnimplementedError();
  }

  @override
  Future<Category> updateCategory(ServiceCall call, Category request) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }

  @override
  Future<Item> updateItem(ServiceCall call, Item request) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }
}
