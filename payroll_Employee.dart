import 'package:flutter/material.dart';
import 'package:splash_screen/Var.dart';
import 'package:pdf/widgets.dart' as pw;

import 'package:splash_screen/profile/home.dart';

class payroll extends StatefulWidget {
  payroll({super.key});

  @override
  State<payroll> createState() => _payrollState();
}

class _payrollState extends State<payroll> {
//  double salary1=salarycal(salaryVar.baseSalary, salaryVar.incentives, salaryVar.deduction);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFF4FFE5),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, left: 18),
                margin: EdgeInsets.zero,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => employeeHomePage()));
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
                padding: EdgeInsets.only(top: 70, left: 95),
                child: Text(
                  "Payroll",
                  style: TextStyle(
                      fontFamily: "pop2",
                      fontSize: 18,
                      color: Color(0xFF034521)),
                ),
              )
            ],
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 25),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10),
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
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.employeeid}",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
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
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.employeeName}",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Jop Titile",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.jobTitle}",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Base Salary",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.baseSalary} JOD",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Deduction",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.deduction} JOD",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Incentives",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.incentives} JOD",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Social Security",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.socialSecurity} JOD",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Health Insurance",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.healthincurance} JOD",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Salary Due",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${salaryVar.salary} JOD",
                              style: const TextStyle(
                                  fontFamily: "pop2",
                                  fontSize: 13,
                                  color: Color(0xFF034521)),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF034521),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color(0xFF034521).withOpacity(0.3), // shadow color
                  spreadRadius: 1, // spread radius
                  blurRadius: 3, // blur radius
                  offset: const Offset(0, 3), // only shadow bottom
                ),
              ],
            ),
            child: MaterialButton(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                child: Row(
                  children: [
                    Icon(
                      Icons.print_outlined,
                      color: Color(0xFFFCB721),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 1),
                      child: Text(
                        "Print",
                        style: TextStyle(
                            fontFamily: "pop1",
                            fontSize: 16,
                            color: Color(0xFFFCB721)),
                      ),
                    )
                  ],
                ),
              ),
              onPressed: _createPdf,
            ),
          )
        ],
      ),
    );
  }

  void _createPdf() async {
    final doc = pw.Document();
    doc.addPage(pw.Page(build: (pw.Context context) {
      return pw.Center(
        child: pw.Text("h"),
      );
    }));
  }
}

double salarycal(
  double baseSalary,
  double incentives,
  double deduction,
) {
  double salary = (baseSalary -
          (salaryVar.healthincurance + deduction + salaryVar.socialSecurity)) +
      incentives;
  return salary;
}
