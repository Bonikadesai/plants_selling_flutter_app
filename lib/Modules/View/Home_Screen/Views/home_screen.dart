import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import '../../Cart_Screen/Views/cart_screen.dart';
import '../Components/Category_Components/category.dart';
import '../Components/Home_Components/home.dart';
import '../Components/User_Component/View/user.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int SelectedIndex = 0;
  int currentPage = 0;
  PageController pageController = PageController();
  final List<Widget> bottomBarPages = [
    const Home(),
    const Category(),
    const Cart_screen(),
    const User(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: MoltenBottomNavigationBar(
        borderRaduis: BorderRadius.circular(40),
        barColor: Colors.grey.shade200,
        domeCircleColor: const Color(0xff325A3E),
        selectedIndex: SelectedIndex,
        onTabChange: (clickedIndex) {
          setState(() {
            SelectedIndex = clickedIndex;
            pageController.jumpToPage(SelectedIndex);
          });
        },
        tabs: [
          MoltenTab(
            title: const Text("Home"),
            icon: const Icon(Icons.home_filled),
          ),
          MoltenTab(
            title: const Text("Category"),
            icon: const Icon(Icons.category),
          ),
          MoltenTab(
            title: const Text("Cart"),
            icon: const Icon(Icons.shopping_bag),
          ),
          MoltenTab(
            title: const Text("User"),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
