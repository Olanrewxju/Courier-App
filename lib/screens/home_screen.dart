// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:courier_app_ui/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Track Parcel',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            centerTitle: false,
            floating: true,
            snap: false,
            titleSpacing: 0,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 24),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('assets/images/cat.jpeg'),
                  ),
                ),
              )
            ],
            shadowColor: Colors.transparent,
            expandedHeight: 426,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 64, horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter parcel number or scan QR code',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 40),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 49,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color:
                                            Theme.of(context).backgroundColor),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Theme.of(context).backgroundColor),
                                  height: 49,
                                  width: 50,
                                  child: SvgPicture.asset(
                                    'assets/images/QR Code.svg',
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 48,
                            width: double.infinity,
                            child: TextButton(
                              child: Text(
                                'Track Parcel',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              onPressed: () {},
                              style: Theme.of(context).textButtonTheme.style,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 32),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My parcels',
                      style: Theme.of(context).textTheme.headline3,
                    )
                  ],
                ),
              )
            ]),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((_, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              child: Container(
                height: 174,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor,
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '00359007738060313786',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Container(
                          height: 31,
                          width: 78,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/amazon_logo.png'))),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'In transit',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          'Last update: 3 hours ago',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2.5),
                            child: LinearProgressIndicator(
                              backgroundColor: Color(0xfff8f8f8),
                              value: 0.7,
                              color:
                                  Theme.of(context).appBarTheme.backgroundColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Details',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              SvgPicture.asset('assets/images/Right.svg')
                            ],
                          ),
                          Container(
                            height: 1,
                            color: Colors.black,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }))
        ],
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
