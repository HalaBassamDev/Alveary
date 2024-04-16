import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/payment/plan.dart';
import 'package:splash_screen/app/portal.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class pay extends StatefulWidget {
  final String codeId;
  final String email;
  const pay({super.key, required this.codeId, required this.email});

  @override
  State<pay> createState() => _Payments1();
}

class _Payments1 extends State<pay> {
  GlobalKey<FormState> form1 = GlobalKey();
  final RegExp nameRegExp = RegExp(r'^[a-zA-Z]+$');
  final RegExp cardRegExp = RegExp(r'^[0-9]{16}$');
  final RegExp dateRegExp = RegExp(r'^(0?[1-9]|1[0-2])/\d{4}$'); // MM//YYYY
  final RegExp cvcRegExp = RegExp(r'^\d{3,4}$');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE0FBBB),
        body: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 16, left: 9),
                  margin: EdgeInsets.zero,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => plan(
                                codeId: 'codeId',
                                email: 'email',
                              )));
                    },
                    shape: const CircleBorder(),
                    minWidth: 60,
                    height: 60,
                    color: const Color(0xFF034521),
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Color(0xFFE0FBBB),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 21.0, right: 5, top: 15, bottom: 20),
                  child: Image.asset(
                    "images/group.png",
                    fit: BoxFit.contain,
                    width: 370,
                  ),
                ),
                Container(
                    width: 350.0,
                    height: 50.0,
                    margin: const EdgeInsets.only(
                        right: 15, top: 0, left: 30, bottom: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the radius as needed
                      color: const Color(0xFFFECE2F),
                    ),
                    child: const Center(
                        child: Text("Total Amount /monthly : \$200",
                            style: TextStyle(
                                fontFamily: "Open2",
                                fontSize: 19,
                                color: Color(0xFF034521),
                                fontWeight: FontWeight.w900)))),
                Container(
                    width: 260.0,
                    height: 47.0,
                    margin: const EdgeInsets.only(right: 10, top: 10, left: 10),
                    child: const Text("Payment details ",
                        style: TextStyle(
                            fontFamily: "Open2",
                            fontSize: 19,
                            color: Color(0xFF034521),
                            fontWeight: FontWeight.bold))),
                Form(
                    key: form1,
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xFFCBEF9B),
                        ),
                        padding: const EdgeInsets.only(left: 15),
                        width: 400,
                        height: 52,
                        margin:
                            const EdgeInsets.only(right: 10, left: 10, top: 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 5),
                              filled: true,
                              fillColor: Color(0xFFCBEF9B),
                              hintText: "Name on Card",
                              hintStyle: TextStyle(
                                fontFamily: 'Open',
                              ),
                              border: InputBorder.none),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Name on card cannot be empty";
                            } else if (!nameRegExp.hasMatch(value)) {
                              return 'Please enter only letters.';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xFFCBEF9B),
                        ),
                        padding: const EdgeInsets.only(left: 15),
                        width: 400,
                        height: 52,
                        margin:
                            const EdgeInsets.only(right: 10, top: 10, left: 10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 5),
                              filled: true,
                              fillColor: Color(0xFFCBEF9B),
                              hintText: "Card number",
                              hintStyle: TextStyle(fontFamily: 'Open'),
                              border: InputBorder.none),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "card number cannot be empty";
                            } else if (!cardRegExp.hasMatch(value)) {
                              return 'invalid card number.';
                            }
                            return null;
                          },
                        ),
                      ),
                      Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFFCBEF9B),
                          ),
                          padding: const EdgeInsets.only(left: 15),
                          width: 191,
                          height: 52,
                          margin: const EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 5),
                                filled: true,
                                fillColor: Color(0xFFCBEF9B),
                                hintText: "valid through",
                                hintStyle: TextStyle(fontFamily: 'Open'),
                                border: InputBorder.none),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "this field cannot be empty";
                              } else if (!dateRegExp.hasMatch(value)) {
                                return 'invalid through';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFFCBEF9B),
                          ),
                          padding: const EdgeInsets.only(left: 15),
                          width: 192,
                          height: 52,
                          margin: const EdgeInsets.only(
                            right: 0,
                            top: 10,
                            left: 8,
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 5),
                                filled: true,
                                fillColor: Color(0xFFCBEF9B),
                                hintText: "cvv/cvc",
                                hintStyle: TextStyle(fontFamily: 'Open'),
                                border: InputBorder.none),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "cvv/cvc cannot be empty";
                              } else if (!cvcRegExp.hasMatch(value)) {
                                return 'invalid cvv/cvc through';
                              }
                              return null;
                            },
                          ),
                        ),
                      ]),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                16), // Adjust the radius as needed
                            color: const Color(0xFF034521),
                          ),
                          width: 380,
                          height: 53,
                          margin: const EdgeInsets.only(
                              top: 29, left: 35, right: 30),
                          child: MaterialButton(
                            minWidth: 300,
                            height: 55,
                            padding: const EdgeInsets.all(10.0),
                            onPressed: () {
                              if (form1.currentState!.validate()) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                          padding: const EdgeInsets.only(
                                              bottom: 250, top: 190),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const startingPage()));
                                            },
                                            child: AlertDialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.all(20),
                                                title: Image.asset(
                                                  "images/success.png",
                                                  width: 300,
                                                  height: 200,
                                                  fit: BoxFit.contain,
                                                ),
                                                content: Column(children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Text(
                                                      "Transaction done successfully ",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'OpenSans',
                                                          fontSize: 15,
                                                          color: Color(
                                                              0xFF034521)),
                                                    ),
                                                  ),
                                                  InkWell(
                                                      child: const Text(
                                                          "Check your Email",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'OpenSans',
                                                              color: Color(
                                                                  0xFFFCB721))),
                                                      // ignore: deprecated_member_use
                                                      onTap: () => launch(
                                                          'https://www.google.com/gmail/about/')),
                                                ])),
                                          ));
                                    });
                              }
                            },
                            child: const Text("Pay",
                                style: TextStyle(
                                  fontFamily: "pop1",
                                  fontSize: 19,
                                  color: Colors.white,
                                )),
                          ))
                    ])),
              ]),
        ));
  }
}
