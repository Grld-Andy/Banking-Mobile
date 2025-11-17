import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        // Container(
        //   child: Column(
        //     children: [
        //       Text("Your balance"),
        //       Row(
        //         children: [
        //           Text("Ghc 5,000.00"),
        //           Icon(Icons.remove_red_eye)
        //         ],
        //       )
        //     ],
        //   )
        // ),
        // Container(),
        // Container(),
        // Container(),
      ],
    );
  }
}