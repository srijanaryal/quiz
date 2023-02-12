import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:quiz/InternetCon.dart';
import 'auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InternetConnectionChecker().onStatusChange.listen((status) {
      final connected = status == InternetConnectionStatus.connected;

      showSimpleNotification(
          Text(connected ? 'Connected to internet' : "No internet Connection"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      // appBar: AppBar(
      // title: Text('Histry Quiz Questions'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/quizz.png',
            height: 200,
            width: 400,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome !!!',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w800, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          SignInButton(Buttons.Google, onPressed: signWithGoogle),

          // MaterialButton(
          //   elevation: 0,
          //   color: Colors.white,
          //   onPressed: () {},
          //   child: Text(
          //     'Sign in with Google',
          //     style: TextStyle(
          //         color: Colors.green,
          //         fontWeight: FontWeight.w700,
          //         fontSize: 20),
          //   ),
          // ),
          SizedBox(
            height: 18,
          ),
          Text(
            'By Continuing you agree with our Terms and Conditions...',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
