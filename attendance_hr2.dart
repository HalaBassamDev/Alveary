import 'package:flutter/material.dart';
import 'package:splash_screen/HR_features/attendance_hr1.dart';
import 'package:splash_screen/HR_features/attendance_hr3.dart';
import 'package:splash_screen/attendWidget_hr.dart';
import 'package:splash_screen/vars.dart';

class attendance2 extends StatefulWidget {
  const attendance2({super.key});

  @override
  State<attendance2> createState() => _attend2State();
}

class _attend2State extends State<attendance2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45, left: 150),
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
              margin: const EdgeInsets.only(left: 20, right: 20, top: 22),
              padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
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
                    padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: PercentW(
                          percent: presentpercent(),
                          backgroundColor: Color(0xFF034521),
                          progressColor: Color(0xFF66D60E),
                          text: "Present",
                        )),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => attendance1()));
                    },
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: Container(
                        padding: EdgeInsets.only(top: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: PercentW(
                                percent: leavepercent(),
                                backgroundColor: Colors.white,
                                progressColor: Color(0xFFEB1313),
                                text: "Leave "))),
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
                            text: "Absent")),
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
                firstText: variable.employeesAttend[1][2]![0],
                secondText: "Leave",
                tcolor: const Color(0xFFEB1313)),
            AttendWidget(
                firstText: variable.employeesAttend[1][2]![1],
                secondText: "Leave",
                tcolor: const Color(0xFFEB1313)),
            AttendWidget(
                firstText: variable.employeesAttend[1][2]![2],
                secondText: "Leave",
                tcolor: const Color(0xFFEB1313)),
            AttendWidget(
                firstText: variable.employeesAttend[1][2]![3],
                secondText: "Leave",
                tcolor: const Color(0xFFEB1313)),
            AttendWidget(
                firstText: variable.employeesAttend[1][2]![4],
                secondText: "Leave",
                tcolor: const Color(0xFFEB1313)),
          ],
        ),
      ),
    );
  }
}
