import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:splash_screen/HR_features/HR_Calender.dart';

class Meeting_Page extends StatelessWidget {
  const Meeting_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Add_Meeting();
  }
}

class Add_Meeting extends StatefulWidget {
  Add_Meeting({super.key});

  @override
  State<StatefulWidget> createState() => _meeting();
}

class _meeting extends State<StatefulWidget> {
  GlobalKey<FormState> date = GlobalKey();
  GlobalKey<FormState> duration = GlobalKey();
  GlobalKey<FormState> title = GlobalKey();
  GlobalKey<FormState> desscrib = GlobalKey();
  TextEditingController dateColtroller = TextEditingController();

  String value = "false";
  String? nameemployee = "";
  String? Jobtitle = "";

  String? dates;
  String? durations;
  String? describtions;
  String? titles;

  @override
  Widget build(BuildContext context) {
    final format = DateFormat('hh:mm');
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
                    margin: const EdgeInsets.only(top: 18, left: 10),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      color: Color.fromRGBO(3, 69, 33, 1),
                    ),
                    child: IconButton(
                      alignment: Alignment.center,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DateandTimePicker()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 25,
                        color: Color.fromRGBO(244, 255, 229, 1),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 70, right: 50, top: 30),
                    alignment: Alignment.topCenter,
                    child: const Center(
                      child: Text(
                        'Add new meeting',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'pop1',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(3, 69, 33, 1)),
                      ),
                    ),
                  )
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
                  margin: const EdgeInsets.only(
                    right: 17,
                    left: 17,
                  ),
                  child: const Text(
                    'Title',
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
                  margin: const EdgeInsets.only(left: 17, right: 17, top: 1),
                  child: Form(
                    key: title,
                    child: SizedBox(
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
                          if (value!.isEmpty)
                            return "This field cannot be empty";
                        },
                        onSaved: (newValue) => titles = newValue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 17),
                  child: const Text(
                    'Team member',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF034521),
                      fontSize: 15,
                      fontFamily: 'pop2',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  const Padding(padding: EdgeInsets.only(left: 17)),
                  Catigory(image: "images/emma.jpg"),
                  const SizedBox(
                    width: 20,
                  ),
                  Catigory(image: "images/joon.jpeg"),
                  const SizedBox(
                    width: 20,
                  ),
                  Catigory(image: "images/adam.jpeg"),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 62.0,
                    width: 62.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff034521),
                    ),
                    child: MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.add_circle_rounded,
                          size: 30,
                          color: Color(0xfff4ffe5),
                        )),
                  ),
                ]),
                const SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  const Padding(padding: EdgeInsets.only(left: 5)),
                  Name_Emoloyee(
                    text: "          Emma ",
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  Name_Emoloyee(
                    text: "Joon",
                  ),
                  const SizedBox(
                    width: 42,
                  ),
                  Name_Emoloyee(
                    text: "      Adam ",
                  ),
                  const SizedBox(
                    width: 38,
                  ),
                  Name_Emoloyee(
                    text: "Add Members",
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 17)),
                    JobTitle_Emoloyee(
                      text: "UI/UX Designer",
                    ),
                    const SizedBox(
                      width: 27,
                    ),
                    JobTitle_Emoloyee(
                      text: " C.E.O",
                    ),
                    const SizedBox(
                      width: 34,
                    ),
                    JobTitle_Emoloyee(
                      text: "Java developer",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                        fontFamily: 'pop2',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 17, right: 17, top: 1),
                    child: Form(
                      key: desscrib,
                      child: SizedBox(
                        height: 120,
                        child: TextFormField(
                          maxLines: 5,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 5),
                            filled: true,
                            fillColor: Color.fromRGBO(63, 116, 82, 0.3),
                            border: OutlineInputBorder(),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty)
                              return "This field cannot be empty";
                          },
                          onSaved: (newValue) => describtions = newValue,
                        ),
                      ),
                    ),
                  ),
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
                              'Add Meeting',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 17),
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
                                            'Meeting scheduled successfully  ',
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

  @override
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

// ignore: camel_case_types
class JobTitle_Emoloyee extends StatelessWidget {
  const JobTitle_Emoloyee({
    super.key,
    this.text,
  });
  // ignore: empty_constructor_bodies
  final String? text;

  @override
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
