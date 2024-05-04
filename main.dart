import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:splash_screen/app/obpording1.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:splash_screen/profile/HR_Homepage.dart';
import 'package:splash_screen/signin.dart';
import 'package:splash_screen/variable.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(onbordingpage());
}

class onbordingpage extends StatefulWidget {
  const onbordingpage({super.key});

  @override
  State<onbordingpage> createState() => _onbordingpageState();
}

class _onbordingpageState extends State<onbordingpage> {
  checkHR() {
    if (employee.isHR) {
      return hrHomePage();
    } else if (!employee.isHR) {
      return onpording1();
    }
    return onpording1();
  }

  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirebaseAuth.instance.currentUser == null
            ? companyCode()
            : checkHR(),
      );
    });
  }
}
