import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splash_screen/payment/form.dart';
import 'package:splash_screen/payment/payment1.dart';
import 'package:splash_screen/payment/payment2.dart';

// ignore: camel_case_types
class plan extends StatelessWidget {
  final String codeId;
  final String email;
  const plan({super.key, required this.codeId, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFE0FBBB),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const SizedBox(
                  height: 1,
                ),
                Positioned(
                  top: 202,
                  right: -300,
                  child: Container(
                    height: 700,
                    width: 520,
                    color: const Color(0XFF7AAF35),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, right: 330),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => page1()));
                },
                shape: const CircleBorder(),
                minWidth: 60,
                height: 60,
                color: const Color(0xFF034521),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color(0xffE0FBBB),
                ),
              ),
            ),
            const Stack(clipBehavior: Clip.none, children: [
              SizedBox(
                height: 1,
              ),
              Positioned(
                top: -10,
                right: -110,
                child: Center(
                  child: Image(
                    image: AssetImage('images/money.png'),
                    width: 200,
                    height: 200,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 210,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(right: 40, left: 40),
                alignment: Alignment.center,
                height: 245,
                width: 330,
                color: const Color(0xFFE0FBBB),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 10),
                        child: const Text('\$8 Employee / Monthly',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF034521),
                              fontSize: 20,
                              fontFamily: 'pop1',
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 50),
                      child: const Text(
                        '• Track employee attendance',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0XFF034521),
                            fontSize: 14,
                            fontFamily: 'pop',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 33),
                      child: const Text(
                        '• Manage employees requests (leave,vacation)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0XFF034521),
                            fontSize: 14,
                            fontFamily: 'pop',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 105),
                      child: const Text(
                        '• Generate Warnings',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0XFF034521),
                            fontSize: 14,
                            fontFamily: 'pop',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 19),
                      child: const Text(
                        '• schedule meetings and events',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0XFF034521),
                            fontSize: 14,
                            fontFamily: 'pop',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 11.5),
                      height: 50,
                      width: double.infinity,
                      child: MaterialButton(
                        elevation: 6.0,
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const pay(
                                    codeId: 'codeId',
                                    email: 'email',
                                  )));
                        },
                        padding: const EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: const Color(0XFF034521),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: Color(0XFFFCFCFC),
                            fontSize: 15,
                            fontFamily: 'pop1',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 40, left: 40),
              alignment: Alignment.center,
              height: 245,
              width: 330,
              color: const Color(0xFFE0FBBB),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 10),
                      child: const Text('\$72 Employee / Yearly',
                          style: TextStyle(
                              color: Color(0xFF034521),
                              fontSize: 20,
                              fontFamily: 'pop',
                              fontWeight: FontWeight.w900)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 60, left: 10),
                    child: const Text(
                      '• Track employee attendance',
                      style: TextStyle(
                          color: Color(0xFF034521),
                          fontSize: 14,
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text(
                      '• Manage employees requests (leave,vacation)',
                      style: TextStyle(
                          color: Color(0xFF034521),
                          fontSize: 14,
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 115),
                    child: const Text(
                      '• Generate Warnings',
                      style: TextStyle(
                          color: Color(0xFF034521),
                          fontSize: 14,
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 30),
                    child: const Text(
                      '• schedule meetings and events',
                      style: TextStyle(
                          color: Color(0xFF034521),
                          fontSize: 14,
                          fontFamily: 'pop',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 11.5),
                    height: 50,
                    width: double.infinity,
                    child: MaterialButton(
                      elevation: 6.0,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Payment2(
                                  codeId: 'codeId',
                                  email: 'email',
                                )));
                      },
                      padding: const EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: const Color(0XFF034521),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Color(0XFFFCFCFC),
                          fontSize: 15,
                          fontFamily: 'pop1',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
