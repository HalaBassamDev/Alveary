import 'package:flutter/material.dart';
import 'package:splash_screen/HR_features/HR_Schedual.dart';
import 'package:splash_screen/HR_features/add_eventHR.dart';
import 'package:splash_screen/HR_features/meeting_HR.dart';
import 'package:table_calendar/table_calendar.dart';

class DateandTimePicker extends StatefulWidget {
  const DateandTimePicker({Key? key}) : super(key: key);
  State<DateandTimePicker> createState() => _DateandTimePickerState();
}

@override
class _DateandTimePickerState extends State<DateandTimePicker> {
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    void _onDaySelected(DateTime day, DateTime focusedDay) {
      setState(() {
        today = day;
      });
    }

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
                            builder: (context) => const Schedual()));
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
                      ))
                ],
              ),
              Center(
                child: Container(
                    margin: const EdgeInsets.all(70),
                    padding: const EdgeInsets.all(20),
                    width: 600,
                    height: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xfff4ffe5),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff7ca484),
                            offset: Offset(
                              0.5,
                              0.5,
                            ),
                            blurRadius: 37.400001525878906,
                            spreadRadius: 0.0,
                          ),
                        ]),
                    child: TableCalendar(
                        headerVisible: false,
                        rowHeight: 36,
                        headerStyle: HeaderStyle(
                            titleTextStyle: const TextStyle(
                              color: Color(0xff1c5936),
                            ),
                            formatButtonVisible: false,
                            titleCentered: false,
                            formatButtonShowsNext: false),
                        focusedDay: today,
                        onDaySelected: _onDaySelected,
                        availableGestures: AvailableGestures.all,
                        selectedDayPredicate: (day) =>
                            isSameDay(day, today), //to select

                        firstDay: DateTime.utc(2000, 01, 01),
                        lastDay: DateTime.utc(2030, 01, 01))),
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff1c5936),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80.0),
                          topRight: Radius.circular(80.0))),
                  height: 400,
                  child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                        left: 30.0,
                        right: 10.0,
                      ),
                      child: Column(children: [
                        MaterialButton(
                            height: 60,
                            minWidth: 60,
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Add_Meeting()));
                            },
                            child: buildRowItem(
                                " Add New Meeting", Icons.add_circle_rounded)),
                        const SizedBox(
                          height: 15.0,
                        ),
                        MaterialButton(
                            height: 60,
                            minWidth: 60,
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Add_Event()));
                            },
                            child: buildRowItem(
                                "Add New Event", Icons.add_circle_rounded)),
                      ])))
            ])));
  }
}

Row buildRowItem(String title, IconData name) {
  return Row(
    children: [
      Container(
        width: 40.0,
        height: 40.0,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: IconButton(
            icon: const Icon(
              Icons.add_circle_rounded,
              size: 24.0,
              color: Color.fromRGBO(3, 69, 33, 1),
            ),
            onPressed: () {
              print("click here");
            }),
      ),
      const SizedBox(
        width: 10.0,
      ),
      Text(
        title,
        style: const TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
      )
    ],
  );
}
