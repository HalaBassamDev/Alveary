import 'package:flutter/material.dart';

class CustomWidget1 extends StatelessWidget {
  CustomWidget1({
    this.hintText,
    required this.MyController,
    this.onChanged,
    this.validator,
    this.keyboardType, // New property for keyboard type
  });

  final TextEditingController MyController;
  final String? hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType; // New property for keyboard type

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double deviceWidth = mediaQueryData.size.width;
    double deviceHeight = mediaQueryData.size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFFD8F2B6),
      ),
      alignment: Alignment.center,
      width: deviceWidth - 35,
      height: 53,
      child: TextFormField(
        controller: MyController,
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyboardType, // Use the keyboardType property
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 15, bottom: 6),
          hintText: hintText,
          filled: true,
          fillColor: const Color(0xFFD8F2B6),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontFamily: 'Open',
            fontSize: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8F2B6), width: 0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8F2B6), width: 0.1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
