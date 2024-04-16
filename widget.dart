import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:splash_screen/custom_code.dart';

Row buildRowItem(String title, IconData name) {
  return Row(
    children: [
      Container(
        width: 40.0,
        height: 40.0,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: IconButton(
            icon: Icon(
              name,
              size: 24.0,
              color: greenColor,
            ),
            onPressed: () {
              print("click here");
            }),
      ),
      const SizedBox(
        width: 10.0,
      ),
      Text(
        title,
        style: const TextStyle(
            fontSize: 16.0, color: Colors.white, fontFamily: 'pop2'),
      )
    ],
  );
}

Container employeeContainer(TextEditingController xx) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.only(top: 5.0, bottom: 7.0),
    width: 380.0,
    height: 56.0,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10.0),
      color: const Color(0xFF034521),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(color: Color(0xFFF4FFE5), fontFamily: 'pop'),
            onChanged: (value) {},
            controller: xx,
            enabled: false,
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
      ],
    ),
  );
}

class Buttons extends StatelessWidget {
  const Buttons({super.key, this.onPressed, required this.title});

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
          style: const TextStyle(
              color: Color(0xFFF4FFE5), fontFamily: 'pop', fontSize: 15),
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

Container emailContainer(TextEditingController xx) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.only(top: 5.0, bottom: 7.0),
    width: 380.0,
    height: 56.0,
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFF034521)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(color: Color(0xFFF4FFE5), fontFamily: 'pop'),
            controller: xx,
            enabled: true,
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Edit icon is clciked ${xx.text}");
          },
          child: Container(
            width: 70.0,
            height: 30.0,
            decoration: BoxDecoration(
                color: simiGreenColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20.0)),
            child: Center(
                child: Text(
              "Edit",
              style: costumeStyle,
            )),
          ),
        )
      ],
    ),
  );
}

Container mobileContainer(TextEditingController xx) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.only(top: 5.0, bottom: 7.0),
    width: 380.0,
    height: 56.0,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10.0),
      color: const Color(0xFF034521),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(color: Color(0xFFF4FFE5), fontFamily: 'pop'),
            controller: xx,
            enabled: true,
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Edit icon is clciked ${xx.text}");
          },
          child: Container(
            width: 70.0,
            height: 30.0,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 255, 229),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20.0)),
            child: Center(
                child: Text(
              "Edit",
              style: costumeStyle,
            )),
          ),
        )
      ],
    ),
  );
}

Container privacyContainer(String mytext, {required double height}) {
  return Container(
    margin: const EdgeInsets.only(top: 8.0, bottom: 15.0),
    width: 385,
    height: height,
    child: Text(
      mytext,
      style: const TextStyle(
          color: Color.fromARGB(204, 3, 69, 33),
          fontSize: 13.0,
          fontFamily: 'pop'),
      textAlign: TextAlign.left,
    ),
  );
}
