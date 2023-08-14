import 'package:barbershop_app/common/style/style.dart';
import 'package:barbershop_app/common/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BannerHomeScreen extends StatefulWidget {
  BannerHomeScreen({Key? key}) : super(key: key);

  @override
  State<BannerHomeScreen> createState() => _BannerHomeScreenState();
}

class _BannerHomeScreenState extends State<BannerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Styles.black),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'The New Barber Shop',
                  style: Styles.txtGeneralTitleWhite,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'HAIR STYLING SPECIALIST',
                  style: Styles.txtGeneralWhiteSmall,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 15,
                      color: Styles.brown,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '1,5 km',
                      style: Styles.txtGeneralBrownSmall,
                    ),
                  ],
                )
              ],
            ),
            CustomButton(
                buttonName: 'BOOK',
                navigator: () {},
                buttonColor: Styles.black,
                textStyle: Styles.txtGeneralWhite)
          ],
        ),
      ),
    );
  }
}
