import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          MaterialButton(
            elevation: 0,
            color: Colors.white,
            onPressed: () {},
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
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
