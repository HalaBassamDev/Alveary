import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:intl/intl.dart';

import 'package:splash_screen/profile/HR_Homepage.dart';
//import 'package:splash_screen/home.dart';

class hrNotificationPage extends StatefulWidget {
  @override
  State<hrNotificationPage> createState() => _notificationPage();
}

class _notificationPage extends State<hrNotificationPage> {
  Color _leaveButtonColor = const Color.fromRGBO(252, 183, 33, 1);
  Color _overtimeButtonColor = const Color.fromRGBO(252, 183, 33, 1);
  Color _generalButtonColor = const Color.fromRGBO(3, 69, 33, 1);
  int type = 0;

  // Define notificationList here
  List<NotificationModel> notificationList = [
    NotificationModel(
      title: "Leave Request",
      body:
          "John has requested leave for tomorrow.John has requested leave for tomorrow.",
      date: DateTime.now(),
      type: "Leave",
      status: "Pending",
    ),
    NotificationModel(
      title: "Leave Request",
      body:
          "John has requested leave for tomorrow.John has requested leave for tomorrow.",
      date: DateTime.now(),
      type: "Leave",
      status: "Pending",
    ),
    NotificationModel(
      title: "Leave Request",
      body:
          "John has requested leave for tomorrow.John has requested leave for tomorrow.",
      date: DateTime.now(),
      type: "Leave",
      status: "Pending",
    ),
    NotificationModel(
      title: "Overtime Request",
      body: "Alice wants to work overtime this weekend.",
      date: DateTime.now().subtract(Duration(days: 1)),
      type: "Overtime",
      status: "Approved",
    ),
    NotificationModel(
      title: "Leave Request",
      body: "Sarah's leave request has been approved.",
      date: DateTime.now().subtract(const Duration(days: 2)),
      type: "Leave",
      status: "Approved",
    ),
    NotificationModel(
      title: "Overtime Request",
      body: "David's overtime request has been rejected.",
      date: DateTime.now().subtract(const Duration(days: 3)),
      type: "Overtime",
      status: "Rejected",
    ),
    NotificationModel(
      title: "Leave Request",
      body: "Emily's leave request is pending approval.",
      date: DateTime.now().subtract(const Duration(days: 4)),
      type: "Leave",
      status: "Pending",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 255, 229, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        MaterialPageRoute(builder: (context) => hrHomePage()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 25,
                      color: Color.fromRGBO(244, 255, 229, 1),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 80.0, right: 80, top: 30),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Notifications',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'pop1',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(3, 69, 33, 1)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(3, 69, 33, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(left: 5, right: 10, bottom: 5),
              padding: const EdgeInsets.all(13),
              height: 60,
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildButton('General', _generalButtonColor, () {
                        setState(() {
                          _leaveButtonColor =
                              const Color.fromRGBO(252, 183, 33, 1);
                          _overtimeButtonColor =
                              const Color.fromRGBO(252, 183, 33, 1);
                          _generalButtonColor =
                              const Color.fromRGBO(3, 69, 33, 1);
                          type = 0;
                        });
                      }),
                      const SizedBox(width: 10),
                      buildButton('Leave', _leaveButtonColor, () {
                        setState(() {
                          _leaveButtonColor =
                              const Color.fromRGBO(3, 69, 33, 1);
                          _overtimeButtonColor =
                              const Color.fromRGBO(252, 183, 33, 1);
                          _generalButtonColor =
                              const Color.fromRGBO(252, 183, 33, 1);
                          type = 1;
                        });
                      }),
                      const SizedBox(width: 10),
                      buildButton('Overtime', _overtimeButtonColor, () {
                        setState(() {
                          _leaveButtonColor =
                              const Color.fromRGBO(252, 183, 33, 1);
                          _overtimeButtonColor =
                              const Color.fromRGBO(3, 69, 33, 1);
                          _generalButtonColor =
                              const Color.fromRGBO(252, 183, 33, 1);
                          type = 2;
                        });
                      }),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            showNotifications(type), // Call the method to display notifications
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, Color color, VoidCallback onPressed) {
    return MaterialButton(
      minWidth: 105,
      height: 55,
      elevation: 0,
      color: color,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: 'pop',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget showNotifications(int type) {
    List<NotificationModel> filteredList = createNotificationList(type);
    return Column(
      children: filteredList
          .map(
            (notification) => Card(
              color: Color.fromRGBO(61, 189, 119, 0.373),
              child: ListTile(
                onTap: () {},
                title: Text(
                  notification.title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'pop',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  notification.body,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color(0xFF034521),
                    fontSize: 13,
                    fontFamily: 'pop',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Text(
                  DateFormat.jm().format(notification.date),
                  style: const TextStyle(
                    color: Color(0xFFF3FFE4),
                    fontSize: 10,
                    fontFamily: 'pop',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  List<NotificationModel> createNotificationList(int type) {
    List<NotificationModel> filteredList = [];
    if (type == 0) {
      // Return all elements in the list
      filteredList = notificationList;
    } else if (type == 1) {
      // Return elements with type 'Leave'
      filteredList = notificationList
          .where((notification) => notification.type == "Leave")
          .toList();
    } else if (type == 2) {
      // Return elements with type 'Overtime'
      filteredList = notificationList
          .where((notification) => notification.type == "Overtime")
          .toList();
    }

    return filteredList;
  }
}

class NotificationModel {
  final String title;
  final String body;
  final DateTime date;
  final String type;
  final String status;

  NotificationModel({
    required this.title,
    required this.body,
    required this.date,
    required this.type,
    required this.status,
  });
}
