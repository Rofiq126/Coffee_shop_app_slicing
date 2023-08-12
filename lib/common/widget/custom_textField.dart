import 'package:barbershop_app/common/style/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final bool obsecure;
  final String label;
  CustomTextField(
      {Key? key,
      required this.controller,
      required this.obsecure,
      required this.label})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: Styles.txtGeneralWhite,
      obscureText: widget.obsecure,
      decoration: InputDecoration(
          label: Text(
        widget.label,
        style: Styles.txtGeneralWhite,
      )),
    );
  }
}
