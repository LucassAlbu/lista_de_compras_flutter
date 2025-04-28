import 'package:hive/hive.dart';

part 'shoppingListModel.g.dart';

@HiveType(typeId: 0)
class ShoppingListModel extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  List<String> items;

  ShoppingListModel({
    required this.title,
    required this.items,
  });
}