import 'package:flutter/material.dart';
import 'package:splash_screen/HR_features/HR_Calender.dart';
import 'package:splash_screen/HR_features/calender.dart';
import 'package:splash_screen/profile/HR_Homepage.dart';

class Schedual extends StatelessWidget {
  const Schedual({super.key});

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
                  "Schedule",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'pop1',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(3, 69, 33, 1)),
                ),
              )
            ],
          ),
          Container(
            height: 90,
            margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
            decoration: BoxDecoration(
                color: const Color(0xFF034521),
                borderRadius: BorderRadius.circular(10)),
            child: MaterialButton(
              child: Row(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4FFE5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(clipBehavior: Clip.none, children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Positioned(
                        top: 1.1,
                        child: Image.asset(
                          "images/ViewSchudel.png",
                          height: 70,
                          width: 70,
                        ),
                      ),
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "View Schedule",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'pop1',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF4FFE5),
                      ),
                    ),
                  )
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const hr_calendar();
                }));
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
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4FFE5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Positioned(
                        top: 1.1,
                        child: Image.asset(
                          "images/addMeeting.png",
                          height: 65,
                          width: 65,
                        ),
                      ),
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Add new meeting / event",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'pop1',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF4FFE5),
                      ),
                    ),
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DateandTimePicker();
                }));
              },
            ),
          )
        ],
      ),
    );
  }
}
