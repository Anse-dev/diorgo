
class Order {
  final String id;
  final List items;
  final DateTime orderTime;
  final double totalPrice;

  Order({
    required this.id,
    required this.items,
    required this.orderTime,
    required this.totalPrice,
  });
}
