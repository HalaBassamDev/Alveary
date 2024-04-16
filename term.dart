import 'package:flutter/material.dart';
import 'package:splash_screen/custom_code.dart';
import 'package:splash_screen/profile/privacy.dart';
import 'package:splash_screen/widget.dart';

class TermServices extends StatelessWidget {
  const TermServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: simiGreenColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 13, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PrivacyPolicy()));
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
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "Terms of Service",
                    style: TextStyle(
                        fontFamily: 'pop2',
                        color: greenColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 55),
            Text(
              "Acceptance of Terms: ",
              style: privacyTextStyle,
            ),
            privacyContainer(
                height: 70.0,
                "By accessing and using Alveary. you agree to these Terms of Service. if you do not agree with these terms, please don’t use our services. "),
            Text(
              "User responsibilities: ",
              style: privacyTextStyle,
            ),
            privacyContainer(
                height: 65.0,
                "You must use Alveary responsibly. providing accurate and lawful information. You are responsible for maintaining the confidentiality of your account details. "),
            Text(
              "Subscription Services: ",
              style: privacyTextStyle,
            ),
            privacyContainer(
                height: 40.0,
                "If you subscribe to our service. you agree to pay the fees associated with your chosen subscription plan."),
            Text(
              "Intellectual Property:",
              style: privacyTextStyle,
            ),
            privacyContainer(
                height: 60.0,
                "All content on Alveary, including text, logos, and design, is protected by copyright. You may not copy or use our content without permission. "),
            Container(
              padding: const EdgeInsets.only(top: 35, left: 100),
              child: const Image(
                image: AssetImage('images/paper.png'),
                height: 240,
                width: 260,
              ),
            )
          ],
        ),
      ),
    );
  }
}
