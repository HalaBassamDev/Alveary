import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.onPressed, required this.title});

  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
              color: Colors.white, fontFamily: 'OpenSans', fontSize: 15),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minWidth: 380,
        height: 53,
        color: const Color(0xFF034521),
      ),
    );
  }
}
