import 'package:flutter/material.dart';
import 'package:splash_screen/Button.dart';
import 'package:splash_screen/employee_features/req_emp.dart';

//import 'package:splash_screen/req.dart';

class LeavePage extends StatelessWidget {
  const LeavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const leave();
  }
}

// ignore: camel_case_types
class leave extends StatefulWidget {
  const leave({super.key});

  @override
  State<StatefulWidget> createState() => _leave();
}

class _leave extends State<StatefulWidget> {
  GlobalKey<FormState> start = GlobalKey();
  GlobalKey<FormState> end = GlobalKey();

  TextEditingController startColtroller = TextEditingController();
  TextEditingController endController = TextEditingController();

  final RegExp dateRegExp =
      RegExp(r'^(0[1-9]|1[0-2])/(0[1-9]|[1-2]\d|3[01])/(19|20)\d{2}$');

  String? LeaveType;
  String? startDate;
  String? endDate;
  String? note;

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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const reqemployee()),
                        );
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
                        'Leave Request',
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
              Container(
                margin: const EdgeInsets.only(top: 22, left: 15, bottom: 1),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Leave type",
                  style: TextStyle(
                    color: Color.fromRGBO(3, 69, 33, 1),
                    fontSize: 15,
                    fontFamily: 'pop2',
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                height: 53,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color.fromRGBO(3, 69, 33, 1),
                ),
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(15),
                  iconEnabledColor: const Color.fromRGBO(244, 255, 229, 1),
                  dropdownColor: const Color(0XFF7BA182),
                  focusColor: const Color.fromRGBO(3, 69, 33, 1),
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xFFF3FFE4),
                  ),
                  iconSize: 30,
                  isExpanded: true,
                  hint: const Text(
                    'Select leave type',
                    style: TextStyle(
                      color: Color(0xFFF3FFE4),
                      fontSize: 15,
                      fontFamily: 'pop2',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  value: LeaveType,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'pop2',
                    fontWeight: FontWeight.w600,
                  ),
                  underline: const SizedBox(
                    height: 0,
                    width: 0,
                  ),
                  onChanged: dropdownCallback,
                  items: [
                    const DropdownMenuItem(
                      child: Text(
                        "Sickness",
                      ),
                      value: "Sickness",
                    ),
                    const DropdownMenuItem(
                      child: Text(
                        "Vacations",
                      ),
                      value: "Vacations",
                    ),
                    const DropdownMenuItem(
                      child: Text(
                        "other",
                      ),
                      value: "other",
                    )
                  ],
                ),
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
                              'Start Date',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF034521),
                                fontSize: 15,
                                fontFamily: 'pop2',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 90,
                              width: 170,
                              child: Form(
                                key: start,
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
                                      hintText: "  MON/DAY/YEAR",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Open1',
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
                                      List<String> dateParts =
                                          value!.split('/');
                                      if (dateParts.length != 3)
                                        return 'Invalid Input';

                                      if (dateParts[0].length == 1)
                                        dateParts[0] = "0" + dateParts[0];

                                      if (dateParts[1].length == 1)
                                        dateParts[1] = "0" + dateParts[1];

                                      value = dateParts.join('/');
                                      if (value!.isEmpty)
                                        return "This field cannot be empty";
                                      if (!dateRegExp.hasMatch(value))
                                        return 'Invalid input';
                                      return null;
                                    },
                                    onSaved: (newValue) => startDate = newValue,
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
                              left: 8.0, right: 8, top: 8),
                          child: Container(
                            child: const Text(
                              'End Date',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF034521),
                                fontSize: 15,
                                fontFamily: 'pop2',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 90,
                              width: 170,
                              child: Form(
                                key: end,
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
                                      hintText: "  MON/DAY/YEAR",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Open1',
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
                                      List<String> dateParts =
                                          value!.split('/');
                                      if (dateParts.length != 3)
                                        return 'Invalid Input';

                                      if (dateParts[0].length == 1)
                                        dateParts[0] = "0" + dateParts[0];

                                      if (dateParts[1].length == 1)
                                        dateParts[1] = "0" + dateParts[1];

                                      value = dateParts.join('/');
                                      if (value!.isEmpty)
                                        return "This field cannot be empty";
                                      if (!dateRegExp.hasMatch(value))
                                        return 'Invalid input';
                                      return null;
                                    },
                                    onSaved: (newValue) => endDate = newValue,
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 17, top: 17),
                    child: const Text(
                      'Notes (Optional)',
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
                    child: TextField(
                      maxLines: 4,
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.only(bottom: 8, left: 10, top: 20),
                        filled: true,
                        fillColor: Color.fromRGBO(63, 116, 82, 0.3),
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (value) => note = value,
                      onChanged: (value) {},
                    ),
                  ),
                  Center(
                    child: Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: const Color(0xFF034521),
                            borderRadius: BorderRadius.circular(15)),
                        height: 53,
                        child: Button(
                            title: " Send ",
                            onPressed: () {
                              if (start.currentState!.validate() &&
                                  end.currentState!.validate()) {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Image.asset(
                                            "images/success.png",
                                            height: 200,
                                            width: 200,
                                          ),
                                          content: const Text(
                                            'Leave Request sends successfully',
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
                  Center(
                      child: Image.asset(
                    'images/leave.png',
                    height: 280,
                    width: 280,
                  ))
                ],
              )
            ],
          ),
        ));
  }

  void dropdownCallback(String? selectedValue) {
    setState(() {
      LeaveType = selectedValue;
    });
  }
}
