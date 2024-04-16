import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:splash_screen/HR_features/meeting_HR.dart';

class Event_Page extends StatelessWidget {
  const Event_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Add_Event();
  }
}

class Add_Event extends StatefulWidget {
  Add_Event({super.key});

  @override
  State<StatefulWidget> createState() => _Event();
}

class _Event extends State<StatefulWidget> {
  GlobalKey<FormState> date = GlobalKey();
  GlobalKey<FormState> duration = GlobalKey();
  GlobalKey<FormState> desscrib = GlobalKey();
  GlobalKey<FormState> title = GlobalKey();
  TextEditingController dateColtroller = TextEditingController();

  String value = "false";

  String? dates;
  String? durations;
  String? describtions;
  String? titles;

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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Add_Meeting()));
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
                        "Add new event",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'pop1',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(3, 69, 33, 1)),
                      ))
                ],
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
                              left: 8.0, right: 8, top: 40),
                          child: Container(
                            child: const Text(' Date',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF034521),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 90,
                              width: 180,
                              child: Form(
                                key: date,
                                child: SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    controller: dateColtroller,
                                    cursorColor: const Color(0xFF034521),
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(5),
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(63, 116, 82, 0.3),
                                      hintStyle: TextStyle(
                                          fontSize: 15,
                                          color: Color(0XFF7BA182)),
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
                                      if (value!.isEmpty)
                                        return "This field cannot be empty";
                                    },
                                    onSaved: (newValue) => dates = newValue,
                                    onTap: () async {
                                      DateTime? pickeddate =
                                          await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2101));
                                      if (pickeddate != null) {
                                        setState(() {
                                          dateColtroller.text =
                                              DateFormat('mm-dd-yyyy')
                                                  .format(pickeddate);
                                        });
                                      }
                                    },
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 40),
                          child: Container(
                            child: const Text(
                              'Duration',
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
                                key: duration,
                                child: SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    cursorColor: const Color(0xFF034521),
                                    keyboardType: TextInputType.datetime,
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(5),
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(63, 116, 82, 0.3),
                                      hintStyle: TextStyle(
                                          fontSize: 15,
                                          color: Color(0XFF7BA182)),
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
                                      if (value!.isEmpty)
                                        return "This field cannot be empty";
                                    },
                                    onSaved: (newValue) => durations = newValue,
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
                  padding: const EdgeInsets.only(right: 17, left: 17, top: 1),
                  child: const Text(
                    'Title',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF034521),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 17, right: 17, top: 1),
                  child: Form(
                    key: title,
                    child: TextFormField(
                      maxLines: 1,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 5),
                        filled: true,
                        fillColor: Color.fromRGBO(63, 116, 82, 0.3),
                        border: OutlineInputBorder(),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) return "This field cannot be empty";
                      },
                      onSaved: (newValue) => titles = newValue,
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 17),
                child: const Text(
                  "Catigory",
                  style: TextStyle(
                      color: Color(0xff034521),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Padding(padding: EdgeInsets.only(left: 17)),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      value = "in office";
                      print(value);
                    });
                  },
                  child: const Text(
                    textAlign: TextAlign.center,
                    ' In Office',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 15),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 45,
                  minWidth: 177,
                  color: const Color(0xFF034521),
                ),
                const SizedBox(
                  width: 9,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      value = "Online";
                      print(value);
                    });
                  },
                  child: const Text(
                    textAlign: TextAlign.center,
                    ' Online',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 15),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 45,
                  minWidth: 177,
                  color: const Color(0xFF034521),
                ),
              ]),
              const SizedBox(
                height: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 17),
                  child: const Text(
                    'Description',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF034521),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 17, right: 17, top: 1),
                    child: Form(
                      key: desscrib,
                      child: TextFormField(
                        maxLines: 5,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 5),
                          filled: true,
                          fillColor: Color.fromRGBO(63, 116, 82, 0.3),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty)
                            return "This field cannot be empty";
                        },
                        onSaved: (newValue) => describtions = newValue,
                      ),
                    )),
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
                      width: 380,
                      child: MaterialButton(
                          child: const Text(
                            'Notify Employees',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          onPressed: () {
                            if (date.currentState!.validate()) {
                              date.currentState!.save();
                            }
                            if (duration.currentState!.validate()) {
                              duration.currentState!.save();
                            }
                            if (title.currentState!.validate()) {
                              title.currentState!.save();
                            }
                            if (desscrib.currentState!.validate()) {
                              desscrib.currentState!.save();

                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Image.asset(
                                          "images/success.png",
                                          height: 200,
                                          width: 200,
                                        ),
                                        content: const Text(
                                          'employees notified successfully  ',
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
                                        titlePadding:
                                            const EdgeInsets.only(top: 10),
                                        backgroundColor: const Color.fromRGBO(
                                            244, 255, 229, 1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ));
                            }
                          })),
                ),
              ])
            ])));
  }
}

class Catigory extends StatelessWidget {
  Catigory({
    this.image,
  });

  final String? image;

  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 32,
        child: CircleAvatar(
          radius: 122,
          backgroundImage: AssetImage(image!),
        ));
  }
}

class Name_Emoloyee extends StatelessWidget {
  Name_Emoloyee({this.text, Tex});
  final String? text;

  Widget build(BuildContext context) {
    return Container(
        child: Text(text!,
            style: const TextStyle(
              color: Color(0xFF034521),
              fontSize: 10,
              fontFamily: 'pop2',
              fontWeight: FontWeight.w800,
            )));
  }
}

class JobTitle_Emoloyee extends StatelessWidget {
  JobTitle_Emoloyee({
    this.text,
  });
  // ignore: empty_constructor_bodies
  final String? text;

  Widget build(BuildContext context) {
    return Container(
        child: Text(text!,
            style: const TextStyle(
              color: Color(0xFF034521),
              fontSize: 10,
              fontFamily: 'pop2',
              fontWeight: FontWeight.w600,
            )));
  }
}
