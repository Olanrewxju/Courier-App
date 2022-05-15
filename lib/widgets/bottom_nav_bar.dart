// ignore_for_file: prefer_final_fields, unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: [
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/images/mp.svg')
                : SvgPicture.asset('assets/images/mp_greyed.svg'),
            label: 'My parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/images/sp.svg')
                : SvgPicture.asset('assets/images/sp_greyed.svg'),
            label: 'Send parcel'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/images/pc.svg')
                : SvgPicture.asset('assets/images/pc_greyed.svg'),
            label: 'Parcel center'),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedItemColor: Colors.black,
      onTap: onItemTapped,
    );
  }
}
