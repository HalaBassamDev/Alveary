import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:splash_screen/custom_code.dart';
import 'package:splash_screen/profile/profile.dart';
import 'package:splash_screen/widget.dart';

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({Key? key}) : super(key: key);

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  late TextEditingController nameController;
  late TextEditingController iDController;
  late TextEditingController jobController;
  late TextEditingController emailController;
  late TextEditingController mobileController;
  String employeeName = 'Emma Joanne';
  String jobTitle = "UI/UX designer";
  String email = 'EmmaJoanne22@gmail.com';
  String phoneNumber = '0795447321';
  int employeeId = 20366;

  @override
  void initState() {
    nameController = TextEditingController(text: employeeName);
    iDController = TextEditingController(text: employeeId.toString());
    jobController = TextEditingController(text: jobTitle);
    emailController = TextEditingController(text: email);
    mobileController = TextEditingController(text: phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: simiGreenColor,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 15),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProfileUI()));
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
                    padding: const EdgeInsets.only(top: 40, left: 60),
                    child: Text("Employee details",
                        style: GoogleFonts.poppins(
                            color: greenColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              Text(
                "Name",
                style: costumeStyle,
              ),
              employeeContainer(nameController),
              Text(
                "Employee ID",
                style: costumeStyle,
              ),
              employeeContainer(iDController),
              Text(
                "Job title",
                style: costumeStyle,
              ),
              employeeContainer(jobController),
              Text(
                "Email",
                style: costumeStyle,
              ),
              emailContainer(emailController),
              Text(
                "Mobile number",
                style: costumeStyle,
              ),
              mobileContainer(mobileController)
            ],
          ),
        ),
      ),
    );
  }
}
