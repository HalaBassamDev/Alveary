import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splash_screen/Var.dart';
import 'package:splash_screen/employee_features/payroll_Employee.dart';
import 'package:splash_screen/profile/HR_Homepage.dart';

class SalaryPage extends StatefulWidget {
  const SalaryPage({super.key});

  @override
  State<SalaryPage> createState() => SalarySlipDetails();
}

class SalarySlipDetails extends State<SalaryPage> {
  TextEditingController EmployeeName = TextEditingController();
  TextEditingController BaseSalary = TextEditingController();
  TextEditingController Deduction = TextEditingController();
  TextEditingController Incentives = TextEditingController();
  TextEditingController SalaryDue = TextEditingController();
  String employeeNameS = "";
  String bsalary = "";
  String deduction11 = "";
  String incentives11 = "";
  String totalSalary = "";
  static String salary2 = "Salary Due";

  @override
  Widget build(BuildContext context) {
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => hrHomePage()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 25,
                        color: Color.fromRGBO(244, 255, 229, 1),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 70, right: 50, top: 50),
                    alignment: Alignment.topCenter,
                    child: const Center(
                      child: Text(
                        'Salary Slip Details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'pop1',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(3, 69, 33, 1)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 47,
              ),
              const Positioned(
                top: 202,
                child: Center(
                  child: Image(
                    image: AssetImage('images/money.png'),
                    width: 170,
                    height: 170,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                child: Center(
                    child: Container(
                        margin: const EdgeInsets.only(right: 40, left: 40),
                        alignment: Alignment.center,
                        width: 330,
                        height: 377,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(3, 69, 33, 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: CustomWidget1(
                                MyController: EmployeeName,
                                hintText: 'Employee Name',
                                onChanged: (value) {
                                  setState(() {
                                    employeeNameS = value;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: CustomWidget1(
                                MyController: BaseSalary,
                                hintText: 'Base Salary',
                                onChanged: (value) {
                                  setState(() {
                                    bsalary = value;
                                    if (value.isNotEmpty &&
                                        value.contains(
                                            RegExp(r'^[0-9]+(\.[0-9]+)?$')) &&
                                        employeeNameS ==
                                            salaryVar.employeeName) {
                                      salaryVar.baseSalary =
                                          double.parse(bsalary);
                                    }
                                  });
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: CustomWidget1(
                                MyController: Deduction,
                                hintText: 'Deduction',
                                onChanged: (value) {
                                  setState(() {
                                    deduction11 = value;
                                    if (value.isNotEmpty &&
                                        value.contains(
                                            RegExp(r'^[0-9]+(\.[0-9]+)?$')) &&
                                        employeeNameS ==
                                            salaryVar.employeeName) {
                                      salaryVar.deduction =
                                          double.parse(deduction11);
                                    }
                                  });
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: CustomWidget1(
                                MyController: Incentives,
                                hintText: 'Incentives',
                                onChanged: (value) {
                                  setState(() {
                                    incentives11 = value;
                                    if (value.isNotEmpty &&
                                        value.contains(
                                            RegExp(r'^[0-9]+(\.[0-9]+)?$')) &&
                                        employeeNameS ==
                                            salaryVar.employeeName) {
                                      salaryVar.incentives =
                                          double.parse(incentives11);
                                    }
                                    ;
                                    salary2 = salarycal(
                                            double.parse(bsalary),
                                            double.parse(incentives11),
                                            double.parse(deduction11))
                                        .toStringAsFixed(2);
                                    // if(employeeNameS==salaryVar.employeeName){
                                    //   salaryVar.salary=double.parse(salary2);
                                    // }
                                  });
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0xFFF4FFE5),
                                ),
                                alignment: Alignment.centerLeft,
                                width: 300,
                                height: 50,
                                child: Text(
                                  salary2,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontFamily: 'Open',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))),
              ),
              const SizedBox(
                height: 25,
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text(
                  textAlign: TextAlign.center,
                  'Save changes',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: const Color(0xFF034521),
                height: 53,
                minWidth: 150,
              ),
            ])));
  }
}

class CustomWidget1 extends StatelessWidget {
  CustomWidget1({
    this.hintText,
    required this.MyController,
    this.onChanged,
    this.validator,
    this.keyboardType, // New property for keyboard type
  });

  final TextEditingController MyController;
  final String? hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType; // New property for keyboard type

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFFD8F2B6),
      ),
      alignment: Alignment.center,
      width: 300,
      height: 50,
      child: TextFormField(
        controller: MyController,
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyboardType, // Use the keyboardType property
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 15, bottom: 6),
          hintText: hintText,
          filled: true,
          fillColor: const Color(0xFFF4FFE5),
          hintStyle: const TextStyle(
            color: Color(0xff759d7d),
            fontFamily: 'Open',
            fontSize: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8F2B6), width: 0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8F2B6), width: 0.1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
