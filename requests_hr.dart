import 'package:flutter/material.dart';
import 'package:splash_screen/HR_features/leavereq_hr.dart';
import 'package:splash_screen/HR_features/overtime_hr.dart';
import 'package:splash_screen/profile/HR_Homepage.dart';

class requests extends StatefulWidget {
  const requests({super.key});

  @override
  State<requests> createState() => _requestState();
}

class _requestState extends State<requests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FFE5),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 15),
                margin: EdgeInsets.zero,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => hrHomePage()));
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
                  "Requests",
                  style: TextStyle(
                      fontFamily: "pop2",
                      fontSize: 16,
                      color: Color(0xFF034521)),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Container(
            height: 85,
            margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
            decoration: BoxDecoration(
                color: const Color(0xFF034521),
                borderRadius: BorderRadius.circular(10)),
            child: MaterialButton(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4FFE5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "images/leave.png",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Leave request",
                      style: TextStyle(
                          fontFamily: "pop2",
                          fontSize: 16,
                          color: Color(0xFFF4FFE5)),
                    ),
                  )
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const leaverequest()));
              },
            ),
          ),
          Container(
            height: 85,
            margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
            decoration: BoxDecoration(
                color: const Color(0xFF034521),
                borderRadius: BorderRadius.circular(10)),
            child: MaterialButton(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4FFE5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "images/overtime.png",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Overtime request",
                      style: TextStyle(
                          fontFamily: "pop2",
                          fontSize: 16,
                          color: Color(0xFFF4FFE5)),
                    ),
                  )
                ],
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const overtime()));
              },
            ),
          )
        ],
      ),
    );
  }
}
