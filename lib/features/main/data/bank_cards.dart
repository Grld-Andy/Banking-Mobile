import 'package:mobile_bank/features/main/domain/models/bank_card.dart';

final List<BankCard> myCards = [
    BankCard(
      cardType: "Debit Card",
      cardNumber: ".... 1234",
      backgroundImage: 'assets/images/mastercardBg.jpg',
      bankLogo: 'assets/images/mastercard.png',
    ),
    BankCard(
      cardType: "Credit Card",
      cardNumber: ".... 5678",
      backgroundImage: 'assets/images/visaBg.jpg',
      bankLogo: 'assets/images/visa.png',
    ),
    BankCard(
      cardType: "Bank",
      cardNumber: ".... 5678",
      backgroundImage: 'assets/images/bankBg.webp',
      bankLogo: 'assets/images/bank.png',
    ),
  ];