// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:courier_app_ui/widgets/my_parcel_size.dart';
import 'package:flutter/material.dart';

class SendParcelScreen extends StatelessWidget {
  const SendParcelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: ListView(
          children: [
            Text(
              'Send Parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              'Parcel Size',
              style: Theme.of(context).textTheme.headline3,
            ),
            const MyParcelSize(
                parcelSize: 'Small',
                parcelSizeDimension: 'Max. 25 kg, 8 x 38 x 64 cm',
                parcelSizeDescription: 'Fits in an envelope',
                parcelSizeImage: 'assets/images/parcelsizeimage.svg'),
            const MyParcelSize(
                parcelSize: 'Medium',
                parcelSizeDimension: 'Max. 25 kg, 19 x 38 x 64 cm',
                parcelSizeDescription: 'Fits in a shoe box',
                parcelSizeImage: 'assets/images/parcelsizeimage.svg'),
            const MyParcelSize(
                parcelSize: 'Large',
                parcelSizeDimension: 'Max. 25 kg, 41 x 38 x 64 cm',
                parcelSizeDescription: 'Fits in a cardboard box',
                parcelSizeImage: 'assets/images/parcelsizeimage.svg'),
            const MyParcelSize(
                parcelSize: 'Custom',
                parcelSizeDimension: 'Max: 30kg or 300cm',
                parcelSizeDescription: 'Fits on a skid',
                parcelSizeImage: 'assets/images/parcelsizeimage.svg'),
          ],
        ),
      ),
    );
  }
}
