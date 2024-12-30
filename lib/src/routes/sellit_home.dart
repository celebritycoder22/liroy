import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liroy/src/routes/home_screen.dart';
import 'package:liroy/src/routes/seller_profile_screen.dart';
import 'package:liroy/src/routes/user_profile_screen.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/icons.dart';

// ignore: must_be_immutable
class SellitHome extends StatefulWidget {
  SellitHome({super.key});

  @override
  State<SellitHome> createState() => _SellitHomeState();
}

class _SellitHomeState extends State<SellitHome> {
  int _selectedIndex = 0;

  final _screens = <Widget>[
    const HomeScreen(),
    SellerProfileScreen(),
    const UserProfileScreen()
  ];

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: SvgPicture.asset(
                  homeIcon,
                  height: 26,
                  width: 26,
                ),
              ),

              //search icon
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: SvgPicture.asset(
                  searchIcon,
                  height: 26,
                  width: 26,
                ),
              ),
              //cart icon
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: SvgPicture.asset(
                  cartIcon,
                  height: 26,
                  width: 26,
                ),
              ),
              //profile icon user profile screen
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, 'user_profile_screen'),
                child: SvgPicture.asset(personIcon, height: 26, width: 26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
