import 'dart:io';
import 'dart:math';

import 'package:dart_grpc_api/dart_grpc_api.dart';
import 'package:grpc/grpc.dart';

void main() {
  final Client client = Client()..initialize();
}

class Client {
  late final ClientChannel _channel;
  late final GroceriesServiceClient _client;

  var _response;

  bool _executionInProgress = true;

  Future<void> initialize({String host = 'localhost', int port = 8585}) async {
    _channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    _client = GroceriesServiceClient(
      _channel,
      options: CallOptions(timeout: Duration(seconds: 10)),
    );

    while (_executionInProgress) {
      try {
        print('--- Welcome to the Dart store API ---');
        print('   --- Please select an option ---');
        print('👉 1. View all product');
        print('👉 2. Add new product');
        print('👉 3. Edit product');
        print('👉 4. Get product');
        print('👉 5. Delete product');
        print('👉 6. View all categories');
        print('👉 7. Add new category');
        print('👉 8. Edit category');
        print('👉 9. Get category');
        print('👉 10. Delete category');
        print('👉 11. Get all products by category');

        final int option = int.parse(stdin.readLineSync() ?? '0');

        switch (option) {
          case 1:
            // await _viewAllProducts();
            break;
          case 2:
            // await _addNewProduct();
            break;
          case 3:
            // await _editProduct();
            break;
          case 4:
            // await _getProduct();
            break;
          case 5:
            // await _deleteProduct();
            break;
          case 6:
            // await _viewAllCategories();
            break;
          case 7:
            await _addNewCategory();
            break;
          case 8:
            // await _editCategory();
            break;
          case 9:
            // await _getCategory();
            break;
          case 10:
            // await _deleteCategory();
            break;
          case 11:
            // await _getAllProductsByCategory();
            break;

          default:
            print('🚫 Invalid option');
            break;
        }
      } catch (e) {
        print(e);
      }

      print('Do you want to continue? (y/n)');

      final String result = stdin.readLineSync() ?? 'y';

      _executionInProgress = result.toLowerCase() == 'y';
    }

    await _channel.shutdown();
  }

  Future<void> _addNewCategory() async {
    print('📝 Please enter the category name:');
    final String name = stdin.readLineSync()!;
    final Category category = await findCategoryByName(name);

    if (category.id != 0) {
      print('🚫 Category already exists');
    } else {
      final Category category = Category()
        ..id = getRandomId()
        ..name = name;

      _response = await _client.createCategory(category);
    }
  }

  Future<Category> findCategoryByName(String name) async {
    final Category category = Category()..name = name;

    return _client.getCategory(category);
  }

  Future<Item> findItemByName(String name) async {
    final Item item = Item()..name = name;

    return _client.getItem(item);
  }

  int getRandomId() => Random(999).nextInt(9999);
}
