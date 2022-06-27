import 'package:dart_grpc_api/src/generated/groceries.pb.dart';

Item getItemFromMap(Map<String, dynamic> item) {
  final int idTag = 1;
  final int nameTag = 2;
  final int categoryIdTag = 3;

  final int id = item['id'];
  final String name = item['name'];
  final int categoryId = item['category_id'];

  return Item.fromJson(
    '{"$idTag": $id, "$nameTag": "$name", "$categoryIdTag": $categoryId}',
  );
}
