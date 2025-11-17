class Transaction {
  final String image;
  final String name;
  final DateTime dateTime;
  final int cost;
  final double taxRate;

  Transaction({
    required this.image,
    required this.name,
    required this.dateTime,
    required this.cost,
    required this.taxRate,
  });
}