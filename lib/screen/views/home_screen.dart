import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:plant_seling_app/screen/Components/cart.dart';
import 'package:plant_seling_app/screen/Components/category.dart';
import 'package:plant_seling_app/screen/Components/serch.dart';
import 'package:plant_seling_app/screen/Components/user.dart';

import '../Components/home.dart';

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
    const Search(),
    const Cart(),
    const User(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Plants",
          style: GoogleFonts.getFont(
            'Rochester',
            fontSize: 50,
            color: const Color(0xff41825F),
          ),
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: MoltenBottomNavigationBar(
        borderRaduis: BorderRadius.circular(40),
        barColor: Colors.grey.shade200,
        domeCircleColor: Color(0xff325A3E),
        selectedIndex: SelectedIndex,
        onTabChange: (clickedIndex) {
          setState(() {
            SelectedIndex = clickedIndex;
            pageController.jumpToPage(SelectedIndex);
          });
        },
        tabs: [
          MoltenTab(
            title: Text("Home"),
            icon: Icon(Icons.home_filled),
          ),
          MoltenTab(
            title: Text("Category"),
            icon: Icon(Icons.category),
          ),
          MoltenTab(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          MoltenTab(
            title: Text("Cart"),
            icon: Icon(Icons.shopping_bag),
          ),
          MoltenTab(
            title: Text("User"),
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
