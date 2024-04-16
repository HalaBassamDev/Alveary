import 'package:flutter/material.dart';

import 'package:splash_screen/custom_code.dart';
import 'package:splash_screen/profile/hr_profile.dart';

import 'package:splash_screen/profile/profile.dart';
import 'package:splash_screen/profile/term.dart';
import 'package:splash_screen/widget.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: simiGreenColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 13, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HRprofile(),
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
                Container(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontFamily: 'pop2', color: greenColor, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              "Introduction: ",
              style: privacyTextStyle,
            ),
            privacyContainer(
                height: 85,
                "Welcome to Alveay, on HR managements application. Your Privacy is important to us, and we’re committed to protecting your personal information. This Privacy policy outlines how we collect, use, and safeguard your data. "),
            Text(
              "Information We collect: ",
              style: privacyTextStyle,
            ),
            privacyContainer(
                height: 85.0,
                "We collect information you provide during registration and usage of our services, including your name, contact information, company details, and user-generated content.    "),
            Text(
              "How We Use Your Information: ",
              style: privacyTextStyle,
            ),
            privacyContainer(
                height: 85.0,
                "We use your data to deliver and improve our service's, provide costumer support, and send notifications. we do not share your personal information with third party unless required by law or with your consent.      "),
            Text(
              "Data Security:",
              style: privacyTextStyle,
            ),
            privacyContainer(
                height: 70.0,
                "We implement industry-standard security measures to protect your data. However, no system is completely secure, so use our services at your risk."),
            Text(
              "Recommendation to read:",
              style: privacyTextStyle,
            ),
            const SizedBox(
              height: 14.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TermServices()));
              },
              child: const Text(
                textAlign: TextAlign.center,
                'Terms of Service',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'OpenSans', fontSize: 15),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              minWidth: 380,
              height: 53,
              color: const Color(0xFF034521),
            ),
            Container(
              padding: const EdgeInsets.only(left: 120, top: 20),
              child: const Image(
                image: AssetImage(
                  'images/lego.png',
                ),
                height: 130,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
