enum OrderStatus { pending, paid, failed }
class Order{
  final String id;
  final int amoutCents;
  final OrderStatus orderStatus;
  final DateTime createdAt;

  Order({
    required this.id,
    required this.amoutCents,
    required this.orderStatus,
    required this.createdAt
  });

  factory Order.fromMap(String id, Map<String, dynamic>map) {
    return Order(
      id: id, 
      amoutCents: map['amoutCents'], 
      orderStatus: map['orderStatus'],
      createdAt: map['createdAt']
    );
  }

}