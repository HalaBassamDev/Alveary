import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/app/portal.dart';
import 'package:splash_screen/payment/form.dart';

// ignore: camel_case_types
class companyCode extends StatefulWidget {
  const companyCode({super.key});

  @override
  State<companyCode> createState() => _companyCodeState();
}

TextEditingController CompanyCode = TextEditingController();
GlobalKey<FormState> form_companyc = GlobalKey();
RegExp companyCodeRegex = RegExp(r'^[a-zA-Z0-9]{3,10}$');
var _companyCode = '';

class _companyCodeState extends State<companyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FFE5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 4,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const SizedBox(
                height: 75,
              ),
              const Positioned(
                top: -209,
                left: -140,
                child: Image(
                  image: AssetImage('images/polyy.png'),
                ),
              ),
              const Positioned(
                top: -120,
                right: -310,
                child: Image(
                  image: AssetImage('images/Ellipse4.png'),
                ),
              ),
              const Positioned(
                top: 260,
                left: -308,
                child: Image(
                  image: AssetImage('images/Vector3.png'),
                ),
              ),
              Positioned(
                left: -135,
                top: -50,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Color(0xFF67A31B)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Positioned(
                left: 155,
                top: 320,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Color(0xFF67A31B)),
                ),
              )
            ],
          ),
          Container(
            child: const Center(
              child: Image(
                image: AssetImage(
                  'images/sign.png',
                ),
                height: 300,
                width: 300,
              ),
            ),
          ),
          Form(
            key: form_companyc,
            child: Container(
              margin: EdgeInsets.only(right: 15, left: 15),
              child: TextFormField(
                onSaved: (value) {
                  _companyCode = value!;
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 15, bottom: 6),
                  hintText: 'Company Code',
                  filled: true,
                  fillColor: const Color(0xFFD8F2B6),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Open',
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFD8F2B6), width: 0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFD8F2B6), width: 0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Comapny code field cannot be empty";
                  } else if (!companyCodeRegex.hasMatch(value)) {
                    return 'invalid company code';
                  }
                  return null;
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: MaterialButton(
              onPressed: () {
                if (form_companyc.currentState!.validate()) {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const startingPage()));
                }
              },
              child: const Text(
                'Confirm',
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
          ),
          Center(
              child: Container(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text("Don't have a subscription?",
                      style: TextStyle(
                        color: Color(0xCC034521),
                        fontSize: 14,
                        fontFamily: 'pop1',
                      )),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => page1()));
                  },
                  child: const Text('Register with us',
                      style: TextStyle(
                        color: Color(0xCC034521),
                        fontSize: 14,
                        fontFamily: 'pop1',
                      )),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
