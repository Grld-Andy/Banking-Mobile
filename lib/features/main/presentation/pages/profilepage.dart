import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          // Profile image
          Center(
            child: Column(
              spacing: 10.0,
              children: [
                Text("Profile",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                )),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 105,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(120),
                          child: Image.asset(
                            "assets/images/profile_female.jpg",
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.edit_note_outlined,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            size: 35,
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                      ),
                    )
                  ]
                ),
              ],
            )
          ),

          // Personal Info
          Container()
        ],
      ),
    );
  }
}