// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyParcelSize extends StatelessWidget {
  const MyParcelSize(
      {Key? key,
      required this.parcelSize,
      required this.parcelSizeDimension,
      required this.parcelSizeDescription,
      required this.parcelSizeImage})
      : super(key: key);

  final String parcelSize,
      parcelSizeDimension,
      parcelSizeDescription,
      parcelSizeImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 115,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 99,
            width: 66,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(parcelSizeImage)),
            ),
          ),
          SizedBox(
            width: 38,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                parcelSize,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                parcelSizeDimension,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                parcelSizeDescription,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
