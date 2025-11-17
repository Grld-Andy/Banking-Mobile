import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_bank/features/main/data/bank_cards.dart';
import 'package:mobile_bank/features/main/data/transactions.dart';
import 'package:mobile_bank/features/main/domain/models/transaction.dart';
import 'package:mobile_bank/features/main/presentation/components/homepage/credit_card.dart';
import 'package:mobile_bank/features/main/presentation/components/homepage/salutations.dart';
import 'package:mobile_bank/themes/light_mode.dart';

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

  String displayFormattedMoney(int val){
    if(_isMoneyVisible){
      final formatter = NumberFormat.currency(locale: 'en_GH', symbol: 'GHS ');
      return formatter.format(val/100);
    }else{
      final hiddenMoney = "GHS ".padRight(8, "*");
      return hiddenMoney;
    }
  }

  String displayFormattedDate(DateTime dateTime){
    final formatter = DateFormat("MMMM d, hh:mm a");
    return formatter.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                        displayFormattedMoney(currentMoney),
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
              spacing: 20,
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
                ),
                ListView.separated(
                  itemCount: transactions.length,
                  separatorBuilder: (_, _) => Divider(height: 20.0, thickness: 0.5, indent: 60, endIndent: 10,),
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    Transaction transaction = transactions[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row( 
                          spacing: 5,
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Theme.of(context).colorScheme.secondary),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(1000),
                                child: Image.asset(
                                  transaction.image,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(transaction.name,
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.inversePrimary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize
                                  ),
                                ),
                                Text(displayFormattedDate(transaction.dateTime),
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Theme.of(context).textTheme.bodySmall?.fontSize
                                  ),
                                ),
                              ],
                            ),
                          ]
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("- ${displayFormattedMoney(transaction.cost)}",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.inversePrimary,
                                fontWeight: FontWeight.bold,
                                fontSize: Theme.of(context).textTheme.bodySmall?.fontSize
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.green,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text("+ ${displayFormattedMoney(transaction.bonus)}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  }
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
