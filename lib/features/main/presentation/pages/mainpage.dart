import 'package:flutter/material.dart';
import 'package:mobile_bank/features/main/presentation/pages/homepage.dart';
import 'package:mobile_bank/features/main/presentation/pages/mappage.dart';
import 'package:mobile_bank/features/main/presentation/pages/profilepage.dart';
import 'package:mobile_bank/features/main/presentation/pages/settingspage.dart';
import 'package:mobile_bank/features/main/presentation/pages/transferpage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

  final navList = [
    {
      'icon': Icons.home,
      'label': "Home"
    },
    {
      'icon': Icons.map,
      'label': "Map"
    },
    {
      'icon': Icons.compare_arrows_sharp,
      'label': "Transfer"
    },
    {
      'icon': Icons.settings,
      'label': "Settings"
    },
    {
      'icon': CircleAvatar(
        radius: 10,
      ),
      'label': "Profile"
    },
  ];

  int _currentIndex = 0;
  void setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  final _pageController = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: PageView(
            controller: _pageController,
            children: [
              Homepage(),
              Mappage(),
              Transferpage(),
              Settingspage(),
              Profilepage()
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index){
            setCurrentIndex(index);
          },
          selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
          unselectedItemColor: Theme.of(context).colorScheme.primary,
          items: navList.map((navItem) {
            return BottomNavigationBarItem(
              icon: navItem['icon'] is Widget
                ? navItem['icon'] as Widget
                : Icon(navItem['icon'] as IconData),
              label: navItem['label'] as String
            );
          }).toList()
        ),
      ),
    );
  }
}