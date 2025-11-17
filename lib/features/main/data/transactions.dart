import 'package:mobile_bank/features/main/domain/models/transaction.dart';

final List<Transaction> transactions = [
  Transaction(
    image: "assets/images/papas_pizza.png",
    name: "Papa's Pizza",
    dateTime: DateTime(2025, 11, 17, 12, 30),
    cost: 27830,
    taxRate: 5.80,
  ),
  Transaction(
    image: "assets/images/kfc.png",
    name: "KFC",
    dateTime: DateTime(2025, 11, 16, 18, 45),
    cost: 15000,
    taxRate: 7.50,
  ),
  Transaction(
    image: "assets/images/melcom.png",
    name: "Melcom",
    dateTime: DateTime(2025, 11, 15, 14, 20),
    cost: 43000,
    taxRate: 12.0,
  ),
  Transaction(
    image: "assets/images/amazon.png",
    name: "Amazon",
    dateTime: DateTime(2025, 11, 10, 9, 15),
    cost: 125000,
    taxRate: 10.0,
  ),
  Transaction(
    image: "assets/images/aliexpress.jpg",
    name: "AliExpress",
    dateTime: DateTime(2025, 11, 12, 20, 50),
    cost: 95000,
    taxRate: 8.5,
  ),
];
