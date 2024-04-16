import 'package:flutter/material.dart';
import 'package:splash_screen/HR_features/attendance_hr2.dart';
import 'package:splash_screen/HR_features/attendance_hr3.dart';
import 'package:splash_screen/attendWidget_hr.dart';
import 'package:splash_screen/profile/HR_Homepage.dart';
import 'package:splash_screen/vars.dart';

// import 'package:splash_screen/HR_features/attendance_hr2.dart';
// import 'package:splash_screen/HR_features/attendance_hr3.dart';
// import 'package:splash_screen/attendWidget_hr.dart';
// import 'package:splash_screen/vars.dart';

class attendance1 extends StatefulWidget {
  const attendance1({super.key});

  @override
  State<attendance1> createState() => _attend1State();
}

class _attend1State extends State<attendance1> {
// List
// {2:['Mark Devies','Hadeel Mark','Daiv Devies','nooh Devies','mohammad jason']},
// {3:['Jenny Wilson','Golf Mark','Daiv Devies','Noor Devies','Emma Walson']}];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 18),
                  margin: EdgeInsets.zero,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => hrHomePage()));
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
                  padding: EdgeInsets.only(top: 35, left: 70),
                  child: Text(
                    "Attendance",
                    style: TextStyle(
                        fontFamily: "pop2",
                        fontSize: 18,
                        color: Color(0xFF034521)),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 18),
              padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF034521),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(0, 5), // Changes position of shadow
                  ),
                ],
              ),
              width: 400,
              height: 139,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      padding: EdgeInsets.only(top: 10, right: 10),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: PercentW(
                            percent: presentpercent(),
                            backgroundColor: Colors.white,
                            progressColor: Color(0xFF66D60E),
                            text: "Present",
                          )),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => attendance1()));
                    },
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.only(right: 5, top: 10),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: PercentW(
                            percent: leavepercent(),
                            backgroundColor: Color(0xFF034521),
                            progressColor: Color(0xFFEB1313),
                            text: "Leave ")),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => attendance2()));
                    },
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.only(right: 25, top: 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: PercentW(
                          percent: absentpercent(),
                          backgroundColor: Color(0xFF034521),
                          progressColor: Color(0xFFFFC404),
                          text: "Absent"),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => attendance3()));
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 15),
                    child: Text(
                      "Wed, 19 Dec",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "pop2",
                          color: Color(0xFF034521)),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Image.asset("images/print.png"),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 8, right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Print out",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 15,
                              color: Color(0xFF034521)),
                        ),
                      ))
                ],
              ),
            ),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![0],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![1],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![2],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![3],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![4],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![5],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![6],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![7],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
            AttendWidget(
                firstText: variable.employeesAttend[0][1]![8],
                secondText: "present",
                tcolor: const Color(0xFF66D60E)),
          ],
        ),
      ),
    );
  }
}
