import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:splash_screen/custom_code.dart';
import 'package:splash_screen/profile/employeedetails.dart';
import 'package:splash_screen/profile/home.dart';
import 'package:splash_screen/widget.dart';

class ProfileUI extends StatefulWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  State<ProfileUI> createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  File? galleryFile;
  bool pick = false;
  final picker = ImagePicker();
  String employeeName = "", jobTitle = "";

  @override
  void initState() {
    employeeName = "Emma Joanne";
    jobTitle = "UI/UX Designer";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: costumeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 13),
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
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                children: [
                  //profile-img+ edit icon
                  Stack(
                    children: [
                      Container(
                        width: 220,
                        height: 220,
                        decoration: galleryFile == null
                            ? BoxDecoration(
                                boxShadow: listOfShadow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                      "images/ema.png",
                                    ),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                              )
                            : BoxDecoration(
                                boxShadow: listOfShadow,
                                image: DecorationImage(
                                    image: FileImage(galleryFile!),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                              ),
                      ),
                      Positioned(
                        child: editContainer(context),
                        top: 170.0,
                        right: 10.0,
                      )
                    ],
                  ),
                  //profile-name
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      employeeName,
                      style: GoogleFonts.poppins(
                        color: greenColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Center(
                    child: Text(
                      jobTitle,
                      style: GoogleFonts.poppins(
                          color: greenColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: contGradient,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(75.0),
                      topRight: Radius.circular(75.0))),
              height: 434,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  left: 30.0,
                  right: 10.0,
                ),
                child: Column(
                  children: [
                    MaterialButton(
                        height: 60,
                        minWidth: 60,
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const EmployeeDetails()));
                        },
                        child: buildRowItem("View details ", Icons.person)),
                    const SizedBox(
                      height: 15.0,
                    ),
                    MaterialButton(
                        height: 60,
                        minWidth: 60,
                        onPressed: () {},
                        child: buildRowItem("Privacy Policy", Icons.info)),
                    const SizedBox(
                      height: 15.0,
                    ),
                    MaterialButton(
                        height: 60,
                        minWidth: 60,
                        onPressed: () {},
                        child: buildRowItem("Log out", Icons.logout)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getImage(
    ImageSource img,
  ) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }

  editContainer(BuildContext context) {
    return GestureDetector(
        child: Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: greenColor,
              borderRadius: BorderRadius.circular(10.0)),
          child: const Icon(
            Icons.edit_outlined,
            color: Colors.white,
          ),
        ),
        onTap: () {
          _showPicker(context: context);
        });
  }
}
