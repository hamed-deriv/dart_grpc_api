import 'package:dart_grpc_api/src/generated/groceries.pb.dart';

abstract class BaseItemsService {
  Item? getItemByName(String name);
  Item? getItemById(int id);

  List<Item>? getItems();
  List<Item>? getItemsByCategory(int categoryId);

  Item? createItem(Item item);
  Item? updateItem(Item item);
  Empty? deleteItem(Item item);
}
