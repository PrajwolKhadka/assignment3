import 'package:assignment3/screens/area_of_circle_screen.dart';
import 'package:assignment3/screens/arithmetic_screen.dart';
import 'package:assignment3/screens/palindrome_screen.dart';
import 'package:assignment3/screens/simpleinterest_screen.dart';
import 'package:assignment3/widgets/my_button.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text("Dashboard"), backgroundColor: Colors.amber, centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,30,8.0,10) ,
        child: Column(
          children: [
            Text(
              "Select One to Navigate",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: MyButton(onPressed:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ArthematicScreen()));
                  }, text: "Arithmetic Screen"),

                ),
                SizedBox(width: 10),
                Expanded(
                  child: MyButton(onPressed:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SimpleinterestScreen()));
                  }, text: "Simple Interest Screen"),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: MyButton(onPressed:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const AreaOfCircleScreen()));
                  }, text: "Area of Circle Screen"),

                ),
                SizedBox(width: 10),
                Expanded(
                  child: MyButton(onPressed:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const PalindromeScreen()));
                  }, text: "Palindrome Screen"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}