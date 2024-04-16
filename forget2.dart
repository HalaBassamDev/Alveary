import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen/Button.dart';
import 'package:splash_screen/app/forget3.dart';

class Forgetp2 extends StatefulWidget {
  const Forgetp2({super.key});

  @override
  State<Forgetp2> createState() => _Forgetp2s();
}

class _Forgetp2s extends State<Forgetp2> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
  TextEditingController c5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FFE5),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const SizedBox(
                height: 1,
              ),
              const Positioned(
                top: -25,
                left: 100,
                child: Image(
                  image: AssetImage(
                    'images/Polygon4.png',
                  ),
                ),
              ),
              Positioned(
                right: -135,
                top: 200,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Color(0xFF67A31B)),
                ),
              ),
              const Positioned(
                top: 600,
                right: -320,
                child: Image(image: AssetImage('images/Ellipse2.png')),
              ),
              Positioned(
                left: -140,
                top: 645,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Color(0xFF67A31B)),
                ),
              ),
              const Positioned(
                top: 610,
                right: 120,
                height: 250,
                width: 195,
                child: Image(
                  image: AssetImage('images/vecrrr.png'),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 250, left: 10, right: 10, bottom: 10),
            child: const Text(
              "OTP Verification",
              style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 32,
                  color: Color(0xFF034521)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 35),
            child: Text(
              "Please check to see the verification code",
              style: TextStyle(
                  fontFamily: "Open2", fontSize: 14, color: Color(0xFF848484)),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(right: 285, bottom: 15),
              child: const Text(
                "OTP Code",
                style: TextStyle(
                    fontFamily: "Open2",
                    fontSize: 14,
                    color: Color(0xFF000000)),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFieldOTP(controller: c1, first: true, last: false),
              TextFieldOTP(controller: c2, first: false, last: false),
              TextFieldOTP(controller: c3, first: false, last: false),
              TextFieldOTP(controller: c4, first: false, last: false),
              TextFieldOTP(controller: c5, first: false, last: true),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Button(
            title: "Verify",
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Forgetp3()));
            },
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 24),
            margin: const EdgeInsets.only(top: 0),
            //padding: EdgeInsets.only(left: 120,top: 0),
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Didn’t get code ? Resend.",
                style: TextStyle(
                    fontFamily: "Open2",
                    fontSize: 14,
                    color: Color(0xFF034521)),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    c1.dispose();
    c2.dispose();
    c3.dispose();
    c4.dispose();
    c5.dispose();
    print("dispose");
    super.dispose();
    _timer.cancel();
  }

  late Timer _timer;
  int counter = 30;
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (counter > 0) {
          counter--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }
}

// ignore: must_be_immutable
class TextFieldOTP extends StatelessWidget {
  bool first;
  bool last;
  TextEditingController controller;

  TextFieldOTP({
    required this.controller,
    required this.first,
    required this.last,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFD8F2B6)),
      child: TextField(
          onChanged: (value) {
            if (value.isNotEmpty && last == false) {
              FocusScope.of(context).nextFocus();
            } else if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          keyboardType: TextInputType.number,
          inputFormatters: [LengthLimitingTextInputFormatter(1)],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            fontFamily: "Open3",
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.sizeOf(context).width / 6,
                  maxWidth: MediaQuery.sizeOf(context).width / 6))),
    );
  }
}
