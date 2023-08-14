import 'package:barbershop_app/common/style/style.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  final TextEditingController search;
  SearchField({Key? key, required this.search}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.search,
      decoration: const InputDecoration(
          filled: true,
          contentPadding: EdgeInsets.zero,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          fillColor: Colors.white,
          focusColor: Colors.white,
          prefixIcon: Icon(
            Icons.search_sharp,
            color: Colors.black,
          ),
          hintText: 'Search',
          hintStyle: Styles.txtGeneralGrey),
    );
  }
}
