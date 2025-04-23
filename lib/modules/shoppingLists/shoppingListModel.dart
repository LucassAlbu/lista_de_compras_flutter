class ShoppingListModel {
  final String title;
  final int items;
  final int purchasedItems;
  final DateTime createdAt;

  ShoppingListModel({
    required this.title,
    required this.items,
    required this.purchasedItems,
    required this.createdAt,
  });
}
