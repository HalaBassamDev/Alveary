import 'package:flutter/material.dart';
import 'package:splash_screen/Button.dart';
import 'package:splash_screen/custom.dart';
import 'package:splash_screen/app/forget2.dart';

class Forgetp4 extends StatefulWidget {
  const Forgetp4({super.key});

  @override
  State<Forgetp4> createState() => _Forgetp4s();
}

class _Forgetp4s extends State<Forgetp4> {
  GlobalKey<FormState> form_4 = GlobalKey();
  final RegExp mobileRegExp = RegExp(
    r'^\d{10}$',
  );
  TextEditingController _phoneNumber1 = TextEditingController();
  String _phone1 = "";
  // ignore: unused_field
  late int _phoneNumber;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFF4FFE5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 10, right: 330),
              margin: EdgeInsets.zero,
              child: MaterialButton(
                onPressed: () {
                  // Navigator.pop(context);
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const plan()));
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
                      'images/Polygon2.png',
                    ),
                  ),
                ),
                Positioned(
                  right: 130,
                  top: 50,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(), color: Color(0xFF3720B1)),
                  ),
                ),
                const Positioned(
                  top: 155,
                  right: -90,
                  height: 250,
                  width: 195,
                  child: Image(
                    image: AssetImage('images/forget4.png'),
                  ),
                ),
                const Positioned(
                  // width: 180,
                  top: 200,
                  left: 160,
                  child: Image(
                    image: AssetImage('images/Ellipse3.png'),
                  ),
                ),
                const Positioned(
                  top: 570,
                  right: 130,
                  height: 250,
                  width: 195,
                  child: Image(
                    image: AssetImage('images/Vector2.png'),
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 600,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(), color: Color(0xFF3720B1)),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 90, left: 10, right: 10, bottom: 10),
              child: const Text(
                "Forget Password",
                style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 32,
                    color: Color(0xFF034521)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 248, left: 15, right: 15),
              child: Form(
                  key: form_4,
                  child: CustomWidget1(
                    MyController: _phoneNumber1,
                    hintText: "Enter Your Phone Number",
                    onChanged: (value) {
                      setState(() {
                        _phone1 = value;
                        if (value.isNotEmpty &&
                            value.contains(RegExp(r'^[0-9]+$'))) {
                          _phoneNumber = int.parse(_phone1);
                        }
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "phone number field cannot be empty";
                      } else if (!mobileRegExp.hasMatch(value)) {
                        return 'invalid phone number';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                  )),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            Button(
              title: "Reset password",
              onPressed: () {
                if (form_4.currentState!.validate()) {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Forgetp2()));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
