import 'package:flutter/material.dart';
import 'package:trading/presentation/screen/movers_page.dart';
import 'package:trading/presentation/screen/order_page.dart';
import 'package:trading/presentation/screen/portfolio_page.dart';
import 'package:trading/presentation/screen/profile_page.dart';
import 'package:trading/presentation/screen/watchlist_page.dart';
import 'package:trading/utils/constant.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int currentTab = 0;
   final pages = [
    WatchListPage(),
    OrderPage(),
    PortfolioPage(),
    MoversPage(),
    ProfilePage()
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: secondaryColor,
        currentIndex: currentTab,
        onTap: (value) {
          setState(() {
            currentTab = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.beenhere),label: 'WatchList'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.luggage), label: 'Portfolio'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Movers'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label : 'IOU007'),
        ],
      ),
    );
  }
}