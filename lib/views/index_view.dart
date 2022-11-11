import 'package:fic_furniture_shop/customs/color_custom.dart';
import 'package:fic_furniture_shop/views/home_view.dart';
import 'package:flutter/material.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int selectedIndex = 0;
  List pageView = [
    const HomeView(),
    const Center(
      child: Text('Cart View'),
    ),
    const Center(
      child: Text('Favorite View'),
    ),
    const Center(
      child: Text('Profile View'),
    ),
  ];

  void onItemTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pageView[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyTwo),
                child: Image.asset(
                  'assets/images/home_icon.png',
                  color: white,
                ),
              ),
              icon: Image.asset(
                'assets/images/home_icon.png',
                color: grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyTwo),
                child: Image.asset(
                  'assets/images/cart_icon.png',
                  color: white,
                ),
              ),
              icon: Image.asset(
                'assets/images/cart_icon.png',
                color: grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyTwo),
                child: Image.asset(
                  'assets/images/star_icon.png',
                  height: 20,
                  color: white,
                ),
              ),
              icon: Image.asset(
                'assets/images/star_icon.png',
                height: 20,
                color: grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyTwo),
                child: Image.asset(
                  'assets/images/profile_icon.png',
                  color: white,
                ),
              ),
              icon: Image.asset(
                'assets/images/profile_icon.png',
                color: grey,
                height: 20,
              ),
              label: '')
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
