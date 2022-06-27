import 'package:dart_grpc_api/src/database/items/base_items_service.dart';
import 'package:dart_grpc_api/src/generated/groceries.pb.dart';

class MockItemService extends BaseItemsService {
  @override
  Item? getItemByName(String name) {
    throw UnimplementedError();
  }

  @override
  Item? getItemById(int id) {
    throw UnimplementedError();
  }

  @override
  List<Item>? getItems() {
    throw UnimplementedError();
  }

  @override
  List<Item>? getItemsByCategory(int categoryId) {
    throw UnimplementedError();
  }

  @override
  Item? createItem(Item item) {
    throw UnimplementedError();
  }

  @override
  Item? updateItem(Item item) {
    throw UnimplementedError();
  }

  @override
  Empty? deleteItem(Item item) {
    throw UnimplementedError();
  }
}
