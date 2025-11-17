import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_bank/features/main/data/bank_cards.dart';
import 'package:mobile_bank/features/main/presentation/components/homepage/credit_card.dart';
import 'package:mobile_bank/features/main/presentation/components/homepage/salutations.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        // Salutations
        Salutations(),

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
              return CreditCard(card: card);
            }
          ),
        ),

        // Transactions
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.tertiary,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.bodySmall?.fontSize
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
