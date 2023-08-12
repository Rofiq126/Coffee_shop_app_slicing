import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String imagePath;
  CustomAppBar({Key? key, required this.imagePath}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.2,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(width: size.width * 0.05, image: AssetImage(widget.imagePath)),
          Image(
              width: size.width * 0.1,
              image: const AssetImage('asset/icon/second_icon.png')),
          Image(
              width: size.width * 0.05,
              image: AssetImage('asset/icon/drawer_icon.png')),
        ],
      ),
    );
  }
}
