import 'package:flutter/material.dart';
import 'package:splash_screen/Button.dart';
import 'package:splash_screen/custom.dart';
import 'package:splash_screen/app/forget2.dart';
import 'package:splash_screen/app/forget4.dart';
import 'package:splash_screen/app/log.dart';

class Forgetp1 extends StatefulWidget {
  const Forgetp1({super.key});

  @override
  State<Forgetp1> createState() => _Forgetp1s();
}

class _Forgetp1s extends State<Forgetp1> {
  TextEditingController _email1 = TextEditingController();
  GlobalKey<FormState> form_2 = GlobalKey();
  final RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
// ignore: unused_field
  String _email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FFE5),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 330),
            margin: EdgeInsets.zero,
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const login()));
              },
              shape: const CircleBorder(),
              minWidth: 60,
              height: 60,
              color: const Color(0xFF034521),
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xFFF4FFE5),
              ),
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const SizedBox(
                height: 1,
              ),
              const Positioned(
                top: -120,
                left: 100,
                child: Image(
                  image: AssetImage(
                    'images/Poly2.png',
                  ),
                ),
              ),
              const Positioned(
                // width: 180,
                top: 200,
                left: 139,
                child: Image(
                  image: AssetImage('images/Ellipse3.png'),
                ),
              ),
              const Positioned(
                top: 167,
                right: -90,
                height: 250,
                width: 195,
                child: Image(
                  image: AssetImage('images/forget.png'),
                ),
              ),
              const Positioned(
                top: 560,
                right: 107,
                height: 250,
                width: 195,
                child: Image(
                  image: AssetImage('images/Vector3.png'),
                ),
              ),
              Positioned(
                  top: 65,
                  right: 150,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(), color: Color(0xFF67A31B)),
                  )),
              Positioned(
                right: -150,
                top: 368,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Color(0xFF67A31B)),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 105, bottom: 30),
            child: const Text(
              "Forget Password",
              style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 32,
                  color: Color(0xFF034521)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Form(
                key: form_2,
                child: CustomWidget1(
                  MyController: _email1,
                  hintText: "Enter your Email",
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email field cannot be empty";
                    } else if (!emailRegExp.hasMatch(value)) {
                      return 'invalid email address';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                )),
          ),
          Container(
            padding: const EdgeInsets.all(5),
          ),
          Button(
            title: 'Reset Password',
            onPressed: () {
              if (form_2.currentState!.validate()) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Forgetp2()));
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 0),
                width: 196,
                height: 50, // Adjust the width as needed
                child: const Divider(
                  height: 120,
                  color: Color(0xFF000000),
                  thickness: 0.5,
                  indent: 30.0,
                  endIndent: 10.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 0),
                padding: const EdgeInsets.all(0),
                child: const Text(
                  "Or",
                  style: TextStyle(
                    fontFamily: "Open3",
                    fontSize: 14,
                    color: Color(0xFF034521),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 0),
                width: 196,
                height: 50, // Adjust the width as needed
                child: const Divider(
                  height: 120,
                  color: Color(0xFF000000),
                  thickness: 0.5,
                  indent: 10.0,
                  endIndent: 30.0,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Forgetp4()));
              },
              child: const Text(
                "Use Your phone number.",
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
}
