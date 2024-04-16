import 'package:flutter/material.dart';
import 'package:splash_screen/employee_features/emp_document.dart';

class warningEmp extends StatefulWidget {
  const warningEmp({super.key});

  @override
  State<warningEmp> createState() => _receivedState();
}

class _receivedState extends State<warningEmp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 13),
                  margin: EdgeInsets.zero,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const EmployeeDocument(),
                        ),
                      );
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
                  padding: EdgeInsets.only(top: 40, left: 90),
                  child: Text(
                    "Warning",
                    style: TextStyle(
                        fontFamily: "pop2",
                        fontSize: 16,
                        color: Color(0xFF034521)),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 12, left: 30, right: 20, bottom: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFFDCD2F),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.47), // shadow color
                    spreadRadius: 2, // spread radius
                    blurRadius: 3, // blur radius
                    offset: const Offset(0, 3), // only shadow bottom
                  ),
                ],
              ),
              margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Employee Name",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 176,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFF034521),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          "Emma Joanne",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 14,
                              color: Color(0xFFF4FFE5)),
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Row(
                      children: [
                        const Text(
                          "Company",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 16,
                              color: Color(0xFF034521)),
                        ),
                        const Spacer(),
                        Container(
                          width: 176,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xFF034521),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                              child: Text(
                            "Al-Hadaff",
                            style: TextStyle(
                                fontFamily: "pop2",
                                fontSize: 14,
                                color: Color(0xFFF4FFE5)),
                          )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Row(
                      children: [
                        const Text(
                          "Department",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 16,
                              color: Color(0xFF034521)),
                        ),
                        const Spacer(),
                        Container(
                          width: 176,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xFF034521),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                              child: Text(
                            "IT department",
                            style: TextStyle(
                                fontFamily: "pop2",
                                fontSize: 14,
                                color: Color(0xFFF4FFE5)),
                          )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Row(
                      children: [
                        const Text(
                          "Employee ID",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 16,
                              color: Color(0xFF034521)),
                        ),
                        const Spacer(),
                        Container(
                          width: 176,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xFF034521),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                              child: Text(
                            "20366",
                            style: TextStyle(
                                fontFamily: "pop2",
                                fontSize: 14,
                                color: Color(0xFFF4FFE5)),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 20, left: 18),
                child: const Text(
                  "Reasons : ",
                  style: TextStyle(
                      fontFamily: "pop2",
                      fontSize: 16,
                      color: Color(0xFF034521)),
                )),
            Container(
              padding: const EdgeInsets.only(
                  top: 12, left: 20, right: 10, bottom: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF034521),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.only(
                  top: 13, left: 15, right: 15, bottom: 10),
              child: const Text(
                "Based of the report of your department  dated 07/11/2023,this letter had been directed to you for the following reasons:\n\nAbsence for(2)Tow days without permission or legitimateBased on the approved work timing report during the period of Based on the approved work timing approved work timing  (presence and departure) report during the period of Based on the As the behavior result in disadvantages for the benefit of the work; and according to the disciplinary warning letter is directed to you. Procedures Guidelines of the company this formal it was agreed that you would need to ensure that there is no further misconduct or any other instance of misconduct within six months, will lead to further disciplinary action which may include the termination your services with the company based on Jordanian Law Article (80).",
                style: TextStyle(
                    fontFamily: "pop", fontSize: 15.5, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
