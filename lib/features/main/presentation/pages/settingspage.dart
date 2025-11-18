import 'package:flutter/material.dart';

class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Column(
              spacing: 10.0,
              children: [
                Text("Settings",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                )),
              ]
            )
          ),
          Text("Card Settings",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
            )
          ),

          // allow transactions
          Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.tertiary
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.lock_open_outlined, color: Theme.of(context).colorScheme.inversePrimary, size: 35,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Allow Transactions",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        Text("Transactions are allowed",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
          ),
          
          // view your pin
          Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.tertiary
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.visibility_off_outlined, color: Theme.of(context).colorScheme.inversePrimary, size: 35,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("View your pin",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        // Text("Transactions are allowed",
                        //   textAlign: TextAlign.left,
                        //   style: TextStyle(
                        //     fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                        //     color: Theme.of(context).colorScheme.secondary,
                        //     fontWeight: FontWeight.bold,
                        //   )
                        // ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
          ),
          
          // change your pin
          Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.tertiary
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.password_outlined, color: Theme.of(context).colorScheme.inversePrimary, size: 35,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Change your pin",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        // Text("Transactions are allowed",
                        //   textAlign: TextAlign.left,
                        //   style: TextStyle(
                        //     fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                        //     color: Theme.of(context).colorScheme.secondary,
                        //     fontWeight: FontWeight.bold,
                        //   )
                        // ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
          ),
          
          // replace your card
          Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.tertiary
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.credit_card, color: Theme.of(context).colorScheme.inversePrimary, size: 35,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Replace your card",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        Text("Card was lost, stolen, or damaged",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
          ),

          // add apple pay
          Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.tertiary
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.apple, color: Theme.of(context).colorScheme.inversePrimary, size: 35,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Add to Apple Pay",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        // Text("Transactions are allowed",
                        //   textAlign: TextAlign.left,
                        //   style: TextStyle(
                        //     fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                        //     color: Theme.of(context).colorScheme.secondary,
                        //     fontWeight: FontWeight.bold,
                        //   )
                        // ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
          ),


          // add apple pay
          Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.tertiary
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.paypal_outlined, color: Theme.of(context).colorScheme.inversePrimary, size: 35,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Add to Paypal",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        // Text("Transactions are allowed",
                        //   textAlign: TextAlign.left,
                        //   style: TextStyle(
                        //     fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                        //     color: Theme.of(context).colorScheme.secondary,
                        //     fontWeight: FontWeight.bold,
                        //   )
                        // ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
          ),


        ],
      ),
    );
  }
}