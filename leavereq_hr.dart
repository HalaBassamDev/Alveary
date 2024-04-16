import 'package:flutter/material.dart';

import 'package:splash_screen/HR_features/requests_hr.dart';

class leaverequest extends StatefulWidget {
  const leaverequest({super.key});

  @override
  State<leaverequest> createState() => _leavereqState();
}

class _leavereqState extends State<leaverequest> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    margin: EdgeInsets.zero,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const requests()));
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
                  Container(
                      margin: const EdgeInsets.only(left: 47, top: 45),
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFFCB721)),
                      child: const Text(
                        "Leave Requests",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ))
                ],
              ),
            ),
            const LeaveWidget(
                firstImage: "images/henry.png",
                name: "Henry Adams",
                designation: "Accounting",
                stickLeave: "Sick Leave",
                fromDate: "From :Tus, 03 Jan",
                toDate: "To :Tus, 05 Jan",
                notes:
                    "Hello I’m not feeling well and i need to request 2 days of sick leave. I’ve included my doctors notes for your review. Thanks for understanding.",
                documentName: "Sick leave Document.pdf"),
            const LeaveWidget(
                firstImage: "images/carla.png",
                name: "Carla Smith",
                designation: "Junior Developer",
                stickLeave: "Personal Leave",
                fromDate: "From :Tus, 09 Jan",
                toDate: "To :Tus, 12 Jan",
                notes:
                    "Hi I’m facing family emergency and need to request 3 days of leave I’ve attached relevant document for your reference. Thank you for your understanding during this time.",
                documentName: "Family emergency Document.pdf"),
            const LeaveWidget(
                firstImage: "images/noor.png",
                name: "Noor Davids",
                designation: "Project Manager",
                stickLeave: "Bereavement Leave",
                fromDate: "From :Tus, 10 Jan",
                toDate: "To :Tus, 12 Jan",
                notes:
                    " I am writing to inform you of a personal matter that requires my immediate attention.Unfortunately, I have experienced a significant loss in my family with the passing of my grandmother. This has been an incredibly difficult time for me and my family, and I am in need of some time off to grieve, attend to funeral arrangements, and support my loved ones during this challenging period.",
                documentName: "Breavement leave Document.pdf"),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class LeaveWidget extends StatefulWidget {
  final String firstImage;
  final String name;
  final String designation;
  final String stickLeave;
  final String fromDate;
  final String toDate;
  final String notes;
  final String documentName;

  const LeaveWidget({
    Key? key,
    required this.firstImage,
    required this.name,
    required this.designation,
    required this.stickLeave,
    required this.fromDate,
    required this.toDate,
    required this.notes,
    required this.documentName,
  }) : super(key: key);

  @override
  _LeaveWidgetState createState() => _LeaveWidgetState();
}

class _LeaveWidgetState extends State<LeaveWidget> {
  bool? accepted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 370,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF81A290),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(widget.firstImage),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      widget.name,
                      style: const TextStyle(
                        fontFamily: "pop2",
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      widget.designation,
                      style: const TextStyle(
                        fontFamily: "popreg",
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 5, right: 210),
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF034521),
            ),
            child: Center(
              child: Text(
                widget.stickLeave,
                style: const TextStyle(
                  fontFamily: "pop1",
                  fontSize: 12.5,
                  color: Color(0xFFF4FFE5),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 5),
                width: 150,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF4FFE5),
                ),
                child: Center(
                  child: Text(
                    widget.fromDate,
                    style: const TextStyle(
                      fontFamily: "pop1",
                      fontSize: 12,
                      color: Color(0xFF034521),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 5),
                width: 125,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF4FFE5),
                ),
                child: Center(
                  child: Text(
                    widget.toDate,
                    style: const TextStyle(
                      fontFamily: "pop1",
                      fontSize: 12,
                      color: Color(0xFF034521),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Notes:",
              style: TextStyle(
                fontFamily: "pop2",
                fontSize: 13,
                color: Color(0xFFFFC404),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 5),
            child: Text(
              widget.notes,
              style: const TextStyle(
                fontFamily: "pop2",
                fontSize: 12.5,
                color: Color(0xFFF4FFE5),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 5),
            padding: const EdgeInsets.only(right: 10),
            width: 330,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF034521),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 6),
                  child: Image.asset("images/doco.png"),
                ),
                Text(
                  widget.documentName,
                  style: const TextStyle(
                    fontFamily: "pop",
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Image.asset("images/download.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 30, top: 20),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: accepted == true
                        ? const Color(0xFF66D60E).withOpacity(0.5)
                        : const Color(0xFF66D60E),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        accepted = true;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (accepted == true)
                          const Icon(Icons.check, color: Colors.white),
                        const SizedBox(width: 5),
                        const Text(
                          "Approve",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: accepted == false
                        ? const Color(0xFFEB1313).withOpacity(0.5)
                        : const Color(0xFFEB1313),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        accepted = false;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (accepted == false)
                          const Icon(Icons.close, color: Colors.white),
                        const SizedBox(width: 5),
                        const Text(
                          "Reject",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
