import 'package:flutter/material.dart';
import 'package:quiz/widgets/sidenavbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SideNav(),
    );
  }
}
