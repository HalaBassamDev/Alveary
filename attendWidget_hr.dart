import 'package:flutter/material.dart';
import 'package:splash_screen/vars.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

int toatalNumberOfEmployees = 19;

class AttendWidget extends StatelessWidget {
  final dynamic firstText;
  final String secondText;
  final Color tcolor;
  const AttendWidget(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.tcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF034521),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 5), // Changes position of shadow
          ),
        ],
      ),
      width: 380,
      height: 55,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              firstText.toString(),
              style: TextStyle(
                fontFamily: "pop2",
                fontSize: 15,
                color: Color(0xFFFFC404),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              secondText,
              style: TextStyle(
                fontFamily: "pop2",
                fontSize: 15,
                color: tcolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

double presentpercent() {
  double presentpercent = (variable.employeesAttend[0][1]?.length.toDouble())! /
      toatalNumberOfEmployees;
  return presentpercent;
}

double leavepercent() {
  double leavepercent = (variable.employeesAttend[1][2]?.length.toDouble())! /
      toatalNumberOfEmployees;
  return leavepercent;
}

double absentpercent() {
  double absentpercent = (variable.employeesAttend[2][3]?.length.toDouble())! /
      toatalNumberOfEmployees;
  return absentpercent;
}

class PercentW extends StatelessWidget {
  final double percent;
  final Color backgroundColor;
  final Color progressColor;
  final String text;

  PercentW({
    required this.percent,
    required this.backgroundColor,
    required this.progressColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 1000,
      radius: 45,
      lineWidth: 14,
      percent: percent,
      progressColor: progressColor,
      backgroundColor: backgroundColor,
      circularStrokeCap: CircularStrokeCap.round,
      center: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Text(
              "${(percent * 100).toStringAsFixed(0)}%",
              style: TextStyle(
                color: progressColor,
                fontFamily: "pop2",
                fontSize: 12,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                  color: progressColor, fontFamily: "pop2", fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
