import 'package:app_dev_client_project_1/pages/care_plan/care_plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:app_dev_client_project_1/pages/home/home.dart';
import 'package:app_dev_client_project_1/pages/profile/profile.dart';
import 'package:app_dev_client_project_1/pages/shop/shop_page.dart';
import 'package:app_dev_client_project_1/widgets/home_widgets/location_display.dart';
import 'package:app_dev_client_project_1/widgets/home_widgets/scaffold_drawer.dart';

class HomePage extends StatefulWidget {
  final String? userEmail;
  const HomePage({super.key, this.userEmail});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    CarePlanPage(),
    ShopPage(),
    MyProfile(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Icon home;
    Icon handshake;
    Icon shoppingCart;
    Icon person;
    bool showLocationDisplay = false;

    Color scaffoldBgColor = Colors.white;

    if (_selectedIndex == 0) {
      home = const Icon(Icons.home);
      scaffoldBgColor = const Color(0xfeBBE5ED);
    } else {
      home = const Icon(Icons.home_outlined);
    }
    if (_selectedIndex == 1) {
      handshake = const Icon(Icons.handshake);
      showLocationDisplay = true;
    } else {
      handshake = const Icon(Icons.handshake_outlined);
    }
    if (_selectedIndex == 2) {
      shoppingCart = const Icon(Icons.shopping_cart);
      showLocationDisplay = true;
    } else {
      shoppingCart = const Icon(Icons.shopping_cart_outlined);
    }
    if (_selectedIndex == 3) {
      person = const Icon(Icons.person);
      showLocationDisplay = false;
    } else {
      person = const Icon(Icons.person_outline);
    }

    return Scaffold(
      backgroundColor: scaffoldBgColor,
      drawer: const ScaffoldDrawer(),
      appBar: AppBar(
        title: Column(
          children: [
            Image.asset("assets/images/logo.png"),
            Gap(5.h),
            if (showLocationDisplay) const LocationDisplay(),
          ],
        ),
        centerTitle: true,
        leading: Builder(builder: (context) {
          return TextButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            child: Image.asset(
              "assets/icons/app_bar_icons/menu.png",
              height: 20.h,
              width: 20.w,
            ),
          );
        }),
        toolbarHeight: (showLocationDisplay) ? 70.h : 50.h,
        actions: [
          GestureDetector(
            onTap: () {},
            child:
                Image.asset("assets/icons/app_bar_icons/notification_bell.png"),
          ),
          Gap(10.w),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 78.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: home, label: ""),
              BottomNavigationBarItem(icon: handshake, label: ""),
              BottomNavigationBarItem(icon: shoppingCart, label: ""),
              BottomNavigationBarItem(icon: person, label: ""),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
