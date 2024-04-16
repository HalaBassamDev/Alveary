import 'package:flutter/material.dart';
import 'package:splash_screen/HR_features/HR_Schedual.dart';
import 'package:splash_screen/HR_features/HR_Warning.dart';
import 'package:splash_screen/HR_features/SalaryHR.dart';
import 'package:splash_screen/HR_features/attendance_hr1.dart';
import 'package:splash_screen/employee_features/attendance_emp.dart';
import 'package:splash_screen/profile/hr_notification.dart';
import 'package:splash_screen/HR_features/requests_hr.dart';
import 'package:splash_screen/profile/profile.dart';
import 'package:splash_screen/variable.dart';

class hrHomePage extends StatefulWidget {
  @override
  State<hrHomePage> createState() => _body();
}

class _body extends State<hrHomePage> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => hrHomePage()));
      } else if (_selectedIndex == 1) {
        Navigator.pop(context);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfileUI()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double deviceWidth = mediaQueryData.size.width;
    double deviceHeight = mediaQueryData.size.height;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              alignment: Alignment.centerRight,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => hrNotificationPage()));
              },
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
              ),
            ),
          ],
          backgroundColor: const Color.fromRGBO(3, 69, 33, 1),
          title: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset("images/Ellipse 248.jpg",
                      height: 43, width: 43, fit: BoxFit.cover)),
              const Padding(
                padding: EdgeInsets.only(top: 8, left: 10, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'pop',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Gelbro Mark",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'pop',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: const Color.fromRGBO(255, 196, 4, 1),
            unselectedItemColor: Colors.white,
            selectedLabelStyle: const TextStyle(
                fontFamily: 'pop',
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(255, 196, 4, 1)),
            unselectedLabelStyle: const TextStyle(color: Colors.white),
            backgroundColor: const Color.fromRGBO(3, 69, 33, 1),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                    size: 25,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 25,
                  ),
                  label: "Profile")
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(3, 69, 33, 1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, 4),
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  padding: const EdgeInsets.all(15),
                  height: 140,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Attendance ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'pop',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          Text(
                            variable.getCurrentDate(),
                            style: const TextStyle(
                                fontFamily: 'pop',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(252, 183, 33, 1)),
                          ),
                          Text(
                            variable.getTime(),
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontFamily: 'pop',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.wb_sunny_sharp,
                            color: Color.fromRGBO(255, 196, 4, 1),
                            size: 24,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 1),
                            child: Text(
                              " Good Morning Gelbro Mark, " + isCheick(),
                              style: const TextStyle(
                                  fontFamily: 'pop',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          )
                        ],
                      ),
                      MaterialButton(
                          height: 30,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          color: const Color.fromRGBO(255, 255, 255, 0.8),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => attendancePage()));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 20,
                                color: Color.fromRGBO(3, 69, 33, 1),
                              ),
                              Center(
                                child: Text(
                                  ' Check in /out',
                                  style: TextStyle(
                                      fontFamily: 'pop',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(3, 69, 33, 1)),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 108,
                      width: deviceWidth / 2.2,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(3, 69, 33, 1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(0, 4),
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 25, left: 12),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Annual Holidays",
                              style: TextStyle(
                                fontFamily: 'pop',
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 196, 4, 1),
                              )),
                          Text(
                            '${variable.annul}/22.0',
                            style: const TextStyle(
                              fontFamily: 'pop',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          const Text(
                            'Days',
                            style: TextStyle(
                                fontFamily: 'pop',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(255, 255, 255, 0.5)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 108,
                      width: deviceWidth / 2.2,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(3, 69, 33, 1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(0, 4),
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 25, right: 12),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Sick days",
                                style: TextStyle(
                                  fontFamily: 'pop',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(255, 196, 4, 1),
                                )),
                            Text(
                              '${variable.sick}/14.0',
                              style: const TextStyle(
                                fontFamily: 'pop',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            const Text(
                              'Days',
                              style: TextStyle(
                                  fontFamily: 'pop',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 255, 255, 0.5)),
                            )
                          ]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 196, 4, 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(18),
                  height: 240,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(7),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      offset: const Offset(0, 4),
                                      blurRadius: 7,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const requests()));
                                  },
                                  icon: Image.asset('images/qa.png'),
                                  iconSize: 25,
                                ),
                              ),
                              const Text(
                                "Requests",
                                style: TextStyle(
                                  color: Color.fromRGBO(3, 69, 33, 1),
                                  fontSize: 13,
                                  fontFamily: 'pop',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(7),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      offset: const Offset(0, 4),
                                      blurRadius: 7,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const attendance1()));
                                  },
                                  icon: Image.asset('images/bag.png'),
                                  iconSize: 25,
                                ),
                              ),
                              const Text(
                                "Attendance",
                                style: TextStyle(
                                  color: Color.fromRGBO(3, 69, 33, 1),
                                  fontSize: 13,
                                  fontFamily: 'pop',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(7),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      offset: const Offset(0, 4),
                                      blurRadius: 7,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const warning_Page()));
                                  },
                                  icon: Image.asset('images/warning.png'),
                                  iconSize: 25,
                                ),
                              ),
                              const Text(
                                "Warning",
                                style: TextStyle(
                                  color: Color.fromRGBO(3, 69, 33, 1),
                                  fontSize: 13,
                                  fontFamily: 'pop',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(7),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      offset: const Offset(0, 4),
                                      blurRadius: 7,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SalaryPage()));
                                  },
                                  icon: Image.asset('images/money.png'),
                                  iconSize: 25,
                                ),
                              ),
                              const Text(
                                "Payroll",
                                style: TextStyle(
                                  color: Color.fromRGBO(3, 69, 33, 1),
                                  fontSize: 13,
                                  fontFamily: 'pop',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(7),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      offset: const Offset(0, 4),
                                      blurRadius: 7,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Schedual()));
                                  },
                                  icon: Image.asset('images/alarm.png'),
                                  iconSize: 25,
                                ),
                              ),
                              const Text(
                                "Schedule",
                                style: TextStyle(
                                  color: Color.fromRGBO(3, 69, 33, 1),
                                  fontSize: 13,
                                  fontFamily: 'pop',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }

  String isCheick() {
    if (variable.isCheck)
      return 'you have cheik today.';
    else
      return 'you have not Cheick in yet.';
  }
}
