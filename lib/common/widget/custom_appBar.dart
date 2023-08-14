import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final Widget widget;
  CustomAppBar({Key? key, required this.widget}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.15,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.widget,
            Image(
                width: size.width * 0.4,
                image: const AssetImage('asset/icon/second_icon.png')),
            const Icon(
              Icons.menu,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
