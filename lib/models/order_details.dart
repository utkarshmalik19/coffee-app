
class OrderDetails{
  final int id;
  final String name;
  final int quantity;
  final String size;
  final List<String> toppings;

  OrderDetails( {required this.id,required this.quantity,required this.size,required this.toppings, required this.name});

}