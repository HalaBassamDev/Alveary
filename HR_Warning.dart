import 'package:flutter/material.dart';
import 'package:splash_screen/profile/HR_Homepage.dart';

//import 'package:splash_screen/req.dart';

class warning_Page extends StatelessWidget {
  const warning_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const _warning();
  }
}

class _warning extends StatefulWidget {
  const _warning({super.key});

  @override
  State<StatefulWidget> createState() => warning();
}

class warning extends State<StatefulWidget> {
  GlobalKey<FormState> employeeId = GlobalKey();
  GlobalKey<FormState> employeename = GlobalKey();
  GlobalKey<FormState> job = GlobalKey();
  GlobalKey<FormState> notes = GlobalKey();
  TextEditingController employee_Id = TextEditingController();
  String? employee_name;
  String? note;
  String? job_title;
  String? emolpyee_id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 255, 229, 1),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      margin: EdgeInsets.zero,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => hrHomePage()),
                          );
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
                    const Padding(
                        padding: EdgeInsets.only(top: 45, left: 88),
                        child: Text(
                          "Warning",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'pop1',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(3, 69, 33, 1)),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 8),
                            child: Container(
                              child: const Text(
                                'Employee name',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF034521),
                                  fontSize: 15,
                                  fontFamily: 'pop2',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 90,
                              width: 180,
                              child: SizedBox(
                                height: 50,
                                child: Form(
                                  key: employeename,
                                  child: TextFormField(
                                    cursorColor: const Color(0xFF034521),
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(5),
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(63, 116, 82, 0.3),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF034521), width: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF034521), width: 1),
                                      ),
                                    ),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "This field cannot be empty";
                                      }
                                    },
                                    onSaved: (newValue) =>
                                        employee_name = newValue,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 8),
                            child: Container(
                              child: const Text(
                                'Employee ID',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF034521),
                                  fontSize: 15,
                                  fontFamily: 'pop2',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 90,
                                width: 180,
                                child: Form(
                                  key: employeeId,
                                  child: SizedBox(
                                    height: 50,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      cursorColor: const Color(0xFF034521),
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(5),
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(63, 116, 82, 0.3),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF034521),
                                              width: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF034521),
                                              width: 1),
                                        ),
                                      ),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "This field cannot be empty";
                                        }
                                        if (value!.length > 8) {
                                          return "To long";
                                        }
                                      },
                                      onSaved: (newValue) =>
                                          emolpyee_id = newValue,
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: const Text(
                      'Job Title',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF034521),
                        fontSize: 15,
                        fontFamily: 'pop2',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 17, right: 17, top: 5),
                    child: Form(
                      key: job,
                      child: TextFormField(
                        maxLines: 1,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 11, top: 20),
                          filled: true,
                          fillColor: Color.fromRGBO(63, 116, 82, 0.3),
                          border: OutlineInputBorder(),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This field cannot be empty";
                          }
                        },
                        onSaved: (newValue) => job_title = newValue,
                      ),
                    ),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    margin: const EdgeInsets.only(left: 17, top: 17),
                    child: const Text(
                      'Notes:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF034521),
                        fontSize: 15,
                        fontFamily: 'pop2',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 17, right: 17, top: 5),
                    child: Form(
                      key: notes,
                      child: TextFormField(
                        maxLines: 4,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 11, top: 20),
                          filled: true,
                          fillColor: Color.fromRGBO(63, 116, 82, 0.3),
                          border: OutlineInputBorder(),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This field cannot be empty";
                          }
                        },
                        onSaved: (newValue) => note = newValue,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color(0xFF034521),
                      borderRadius: BorderRadius.circular(15)),
                  height: 53,
                  child: MaterialButton(
                    onPressed: () {
                      if (employeeId.currentState!.validate()) {
                        employeeId.currentState!.save();
                      }
                      if (employeename.currentState!.validate()) {
                        employeename.currentState!.save();
                      }
                      if (job.currentState!.validate()) {
                        job.currentState!.save();
                      }
                      if (notes.currentState!.validate()) {
                        notes.currentState!.save();

                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Image.asset(
                                    "images/success.png",
                                    height: 200,
                                    width: 200,
                                  ),
                                  content: const Text(
                                    'Warning sends successfully ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF034521),
                                      fontSize: 16,
                                      fontFamily: 'pop2',
                                      fontWeight: FontWeight.w700,
                                      height: 3,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.only(
                                      left: 10, right: 10, bottom: 2),
                                  titlePadding: const EdgeInsets.only(top: 10),
                                  backgroundColor:
                                      const Color.fromRGBO(244, 255, 229, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ));
                      }
                    },
                    child: const Text(
                      textAlign: TextAlign.center,
                      'Send',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minWidth: 380,
                    height: 53,
                    color: const Color(0xFF034521),
                  ),
                )),
                const SizedBox(
                  height: 40,
                ),
                Center(
                    child: Image.asset(
                  'images/warning.png',
                  height: 290,
                  width: 290,
                ))
              ]),
        ));
  }
}
