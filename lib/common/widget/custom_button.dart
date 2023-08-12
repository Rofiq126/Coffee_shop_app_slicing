import 'package:barbershop_app/common/style/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String buttonName;
  final Color buttonColor;
  final GestureTapCallback navigator;
  final TextStyle textStyle;
  final double horizontal;
  CustomButton(
      {Key? key,
      required this.buttonName,
      required this.navigator,
      required this.horizontal,
      required this.buttonColor,
      required this.textStyle})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.navigator,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(width: 2, color: Styles.brown)),
          backgroundColor: widget.buttonColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.horizontal),
          child: Text(
            widget.buttonName,
            style: widget.textStyle,
          ),
        ));
  }
}
