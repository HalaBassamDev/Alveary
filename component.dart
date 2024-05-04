import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomWidget extends StatelessWidget {
  CustomWidget(
      {super.key,
      this.hintText,
      required this.MyController,
      this.obscure = false});

  bool? obscure;
  final TextEditingController MyController;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 380,
      height: 53,
      child: TextFormField(
        obscureText: obscure!,
        controller: MyController,
        decoration: InputDecoration(
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
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8F2B6), width: 0.1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
