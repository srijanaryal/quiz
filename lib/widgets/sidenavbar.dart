import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Colors.pink,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            'Srijan Aryal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Rs 45000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                listItem(
                  label: "Daily Quiz",
                  icon: Icons.quiz,
                ),
                SizedBox(
                  height: 10,
                ),
                listItem(label: "Leaderboard", icon: Icons.leaderboard),
                SizedBox(
                  height: 20,
                ),
                listItem(label: "How to Use", icon: Icons.question_answer),
                SizedBox(
                  height: 20,
                ),
                listItem(label: "Privacy Policy", icon: Icons.privacy_tip),
                SizedBox(
                  height: 20,
                ),
                listItem(label: "About Us", icon: Icons.medical_information),
                SizedBox(
                  height: 40,
                ),
                listItem(label: "Rate Us in Google Play", icon: Icons.star),
              ],
            ),
          )),
    );
  }

  Widget listItem({required String label, required IconData icon}) {
    final color = Colors.white;
    final hovercolor = Colors.white70;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      hoverColor: hovercolor,
      title: Text(
        label,
        style: TextStyle(color: color, fontSize: 20),
      ),
      onTap: () {},
    );
  }
}
