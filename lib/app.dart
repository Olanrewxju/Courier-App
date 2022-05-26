// ignore_for_file: prefer_const_constructors

import 'package:courier_app_ui/parcel_app_theme.dart';
import 'package:courier_app_ui/screens/screens.dart';

import 'package:courier_app_ui/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class CourierApp extends StatelessWidget {
  const CourierApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ParcelAppTheme.lightTheme,
      home: Scaffold(
        body: SendParcelScreen(),
        bottomNavigationBar: const MyBottomNavBar(),
      ),
    );
  }
}
