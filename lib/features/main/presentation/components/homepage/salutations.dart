import 'package:flutter/material.dart';

class Salutations extends StatelessWidget {
  const Salutations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            child: Icon(
              Icons.notifications_none_outlined,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 25,
            )
          ),
        )
      ],
    );
  }
}

