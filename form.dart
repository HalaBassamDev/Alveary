import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/payment/plan.dart';

class page1 extends StatelessWidget {
  page1({super.key});

  GlobalKey<FormState> form_1 = GlobalKey();
  final RegExp name1RegExp = RegExp(r'^[a-zA-Z]+$');
  final RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  final RegExp mobileRegExp = RegExp(
    r'^\d{10}$',
  );
  final RegExp enumberRegExp = RegExp(r'^\d+$');
  var _companyName = '';
  var _companyEmail = "";
  var _fullName = '';
  var _mobileNumber = '';
  var _numOfEmployees = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFF4FFE5),
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 25, right: 335),
                  child: MaterialButton(
                      onPressed: () {
                        //   Navigator.pop(context);
                        // Navigator.of(context).push(
                        // MaterialPageRoute(
                        // builder: (context) => const startingPage(),
                        // ),
                        //);
                      },
                      minWidth: 60,
                      height: 60,
                      color: const Color(0Xff034521),
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0XFFF4FFE5),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 15),
                  child: const Text(
                    'Get a customized price quote tailored to your organization'
                    's needs.',
                    style: TextStyle(
                      color: Color(0xFF034521),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: const Text(
                    'Request a price quote now by filing out the form below, and we will contact you to better understanand your business needs.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF034521),
                      fontFamily: 'Open2',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Form(
                  key: form_1,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 14),
                        child: const Text(
                          "Full name",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF034521),
                            fontFamily: 'Open',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              300), // Adjust the radius as needed
                          color: const Color(
                              0xFFD8F2B6), // Background color of the container
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: 50,
                        width: 390,
                        child: TextFormField(
                          onSaved: (value) {
                            _fullName = value!;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xFFD8F2B6),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Full Name cannot be empty";
                            } else if (!name1RegExp.hasMatch(value)) {
                              return 'Please enter only letters.';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 14),
                        child: const Text(
                          "Business Email Address",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF034521),
                            fontFamily: 'Open',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              300), // Adjust the radius as needed
                          color: const Color(
                              0xFFD8F2B6), // Background color of the container
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: 50,
                        width: 390,
                        child: TextFormField(
                          onSaved: (value) {
                            _companyEmail = value!;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xFFD8F2B6),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Business email cannot be empty";
                            } else if (!emailRegExp.hasMatch(value)) {
                              return 'invalid email address';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 14),
                        child: const Text(
                          "Organization Name",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF034521),
                            fontFamily: 'Open',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              300), // Adjust the radius as needed
                          color: const Color(
                              0xFFD8F2B6), // Background color of the container
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: 50,
                        width: 390,
                        child: TextFormField(
                          onSaved: (value) {
                            _companyName = value!;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xFFD8F2B6),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Organization name cannot be empty";
                            } else if (!name1RegExp.hasMatch(value)) {
                              return 'Please enter only letters.';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 14),
                        child: const Text(
                          "Mobile Number",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF034521),
                            fontFamily: 'Open',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              300), // Adjust the radius as needed
                          color: const Color(
                              0xFFD8F2B6), // Background color of the container
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: 50,
                        width: 390,
                        child: TextFormField(
                          onSaved: (value) {
                            _mobileNumber = value!;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xFFD8F2B6),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Mobile number cannot be empty";
                            } else if (!mobileRegExp.hasMatch(value)) {
                              return 'invalid mobile number';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 14),
                        child: const Text(
                          "Number of Employees",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF034521),
                            fontFamily: 'Open',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              300), // Adjust the radius as needed
                          color: const Color(
                              0xFFD8F2B6), // Background color of the container
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: 50,
                        width: 390,
                        child: TextFormField(
                          onSaved: (value) {
                            _numOfEmployees = value!;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xFFD8F2B6),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Number of employees cannot be empty";
                            } else if (!enumberRegExp.hasMatch(value)) {
                              return 'invalid number of emoloyees';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 11.5),
                        height: 50,
                        width: double.infinity,
                        child: MaterialButton(
                          elevation: 6.0,
                          onPressed: () {
                            String generateCode() {
                              final random = Random();
                              const characters =
                                  'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

                              return String.fromCharCodes(
                                Iterable.generate(
                                  10,
                                  (_) => characters.codeUnitAt(
                                    random.nextInt(characters.length),
                                  ),
                                ),
                              );
                            }

                            final db = FirebaseFirestore.instance;

                            final codes = db.collection("codes");
                            final codeId = generateCode();
                            final data1 = <String, dynamic>{
                              'company_name': _companyName,
                              'company_email': _companyEmail,
                              'full_name': _fullName,
                              'mobile_number': _mobileNumber,
                              'Number_of_employees': _numOfEmployees,
                              'status': 'pending'
                            };

                            codes
                                .doc(codeId)
                                .collection('company')
                                .doc('test@gmail.com')
                                .set(data1);

                            if (form_1.currentState!.validate()) {
                              form_1.currentState!.save();
                              Navigator.pop(context);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => plan(
                                        codeId: 'codeId',
                                        email: 'email',
                                      )));
                            }
                          },
                          padding: const EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: const Color(0XFF034521),
                          child: const Text(
                            'Send',
                            style: TextStyle(
                              color: Color(0XFFFCFCFC),
                              fontSize: 15,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
