import 'package:flutter/material.dart';

import 'package:splash_screen/custom.dart';
import 'package:splash_screen/app/forget4.dart';

class Forgetp3 extends StatefulWidget {
  const Forgetp3({super.key});

  @override
  State<Forgetp3> createState() => _Forgetp3s();
}

class _Forgetp3s extends State<Forgetp3> {
  GlobalKey<FormState> form_3 = GlobalKey();
  TextEditingController _password1 = TextEditingController();
  TextEditingController _password2 = TextEditingController();
  String _password = "";
  String _password_2 = "";
  RegExp upperCaseRegex = RegExp(r'[A-Z]');
  RegExp lowerCaseRegex = RegExp(r'[a-z]');
  RegExp digitRegex = RegExp(r'[0-9]');
  RegExp specialCharacterRegex = RegExp(r'[^a-zA-Z0-9\s]');
  // final RegExp passRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*()_+}{"|:;<,>.?/~`])(?=.{8,})');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: const Color(0xFFF4FFE5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const SizedBox(
                  height: 1,
                ),
                const Positioned(
                  top: -20,
                  left: 100,
                  child: Image(
                    image: AssetImage(
                      'images/Polygon4.png',
                    ),
                  ),
                ),
                Positioned(
                  right: 130,
                  top: 130,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(), color: Color(0xFFBAE581)),
                  ),
                ),
                const Positioned(
                  top: 255,
                  right: -90,
                  height: 250,
                  width: 195,
                  child: Image(
                    image: AssetImage('images/forget3.png'),
                  ),
                ),
                const Positioned(
                  // width: 180,
                  top: 310,
                  left: 155,
                  child: Image(
                    image: AssetImage('images/Ellipse4.png'),
                  ),
                ),
                const Positioned(
                  top: 670,
                  right: 140,
                  height: 250,
                  width: 195,
                  child: Image(
                    image: AssetImage('images/navyvec.png'),
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 710,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(), color: Color(0xFFBAE581)),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 190, left: 10, right: 10, bottom: 20),
              child: const Text(
                "Reset Password",
                style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 32,
                    color: Color(0xFF034521)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240, left: 15, right: 15),
              child: Form(
                key: form_3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomWidget1(
                      MyController: _password1,
                      hintText: "New Password",
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password field cannot be empty";
                        } else if (value.length < 8) {
                          return "Password must be at least 8 characters long.";
                        } else if (!upperCaseRegex.hasMatch(value)) {
                          return 'Password must contain at least one uppercase letter.';
                        } else if (!lowerCaseRegex.hasMatch(value)) {
                          return "Password must contain at least one lowercase letter.";
                        } else if (!digitRegex.hasMatch(value)) {
                          return "Password must contain at least one digit.";
                        } else if (!specialCharacterRegex.hasMatch(value)) {
                          return "Password must contain at least one special character.";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    CustomWidget1(
                      MyController: _password2,
                      hintText: "Confirm Password",
                      onChanged: (value) {
                        setState(() {
                          _password_2 = value;
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "confirm password field cannot be empty";
                        } else if (_password != _password_2) {
                          return 'the password doesn not match';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xFF034521),
              ),
              child: MaterialButton(
                minWidth: 380,
                height: 55,
                onPressed: () {
                  if (form_3.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const Forgetp4())); //put your next page here
                              },
                              child: AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                contentPadding: const EdgeInsets.all(30),
                                title: Image.asset(
                                  "images/success.png",
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.contain,
                                ),
                                content: Container(
                                  child: const Text(
                                    "Password changed successfully ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Open",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Color(0xFF034521)),
                                  ),
                                ),
                              ));
                        });
                  }
                },
                child: const Text(
                  "Reset password",
                  style: TextStyle(
                      fontFamily: "Open",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFFFCFCFC)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
