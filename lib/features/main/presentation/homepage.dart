import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_bank/features/main/domain/models/bank_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isMoneyVisible = true;
  int currentMoney = 500000;
  void setIsMoneyVisible(){
    setState(() {
      _isMoneyVisible = !_isMoneyVisible;
    });
  }
  String displayCurrentMoney(){
    if(_isMoneyVisible){
      final formatter = NumberFormat.currency(locale: 'en_GH', symbol: 'GHS ');
      return formatter.format(currentMoney/100);
    }else{
      final hiddenMoney = "GHS ".padRight(8, "*");
      return hiddenMoney;
    }
  }

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
      bankLogo: 'assets/images/bank.jpg',
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        // Salutations
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning, Terry",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize
                  ),
                ),
                Text(
                  "Welcome to Creditet",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.bodySmall?.fontSize
                  ),
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.notifications_none_outlined, size: 25,)
              ),
            )
          ],
        ),
        
        // Check balance
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Your balance",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      displayCurrentMoney(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                      ),
                    ),
                    IconButton(
                      onPressed: setIsMoneyVisible,
                      icon: Icon(
                        _isMoneyVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined
                      )
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.inversePrimary)
                ),
                child: Text(
                  "Add money",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )
        ),

        // Your cards
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your cards",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize
              ),
            ),
            Text(
              "+ New card",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.bodySmall?.fontSize
              ),
            )
          ],
        ),
        SizedBox(
          height: 160,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: myCards.length,
            separatorBuilder: (_, __) => SizedBox(width: 10),
            itemBuilder: (context, index) {
              final card = myCards[index];
              return SizedBox(
                width: 250,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(
                          card.backgroundImage,
                          height: 160,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            card.bankLogo,
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    card.cardType,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: Theme.of(context).textTheme.bodySmall?.fontSize
                                    ),
                                  ),
                                  Text(
                                    card.cardNumber,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize
                                    ),
                                  ),
                                ],
                              ),
                              TextButton.icon(
                                onPressed: (){},
                                style: TextButton.styleFrom(
                                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10), // smaller radius
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15)
                                ),
                                icon: Icon(
                                  Icons.visibility_outlined,
                                  color: Theme.of(context).colorScheme.inversePrimary
                                ),
                                label: Text(
                                  "Details",
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.inversePrimary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]
                ),
              );
            }
          ),
        ),

        // Transactions
        // Container(),
      ],
    );
  }
}