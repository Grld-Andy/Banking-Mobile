import 'package:flutter/material.dart';
import 'package:mobile_bank/features/main/domain/models/bank_card.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
    required this.card,
  });

  final BankCard card;

  @override
  Widget build(BuildContext context) {
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
}