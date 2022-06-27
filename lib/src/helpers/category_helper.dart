import 'package:dart_grpc_api/dart_grpc_api.dart';

Category getCategoryFromMap(Map<String, dynamic> item) {
  final int idTag = 1;
  final int nameTag = 2;

  final int id = item['id'];
  final String name = item['name'];

  return Category.fromJson('{"$idTag": $id, "$nameTag": "$name"}');
}
