import 'package:assignment3/widgets/my_button.dart';
import 'package:flutter/material.dart';

import '../common/my_snackbar.dart' show showMySnackBar;
import '../widgets/my_textfield.dart';

class SimpleinterestScreen extends StatefulWidget {
  const SimpleinterestScreen({super.key});

  @override
  State<SimpleinterestScreen> createState() => _SimpleinterestScreenState();
}

class _SimpleinterestScreenState extends State<SimpleinterestScreen> {
  final TextEditingController firstController =TextEditingController();
  final TextEditingController secondController = TextEditingController();
  final TextEditingController thirdController =TextEditingController();

  final _gap = SizedBox(height: 10,);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Interest Screen", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black),
      body: Padding(
          padding : EdgeInsets.all(8),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                MyTextFormField(
                    controller: firstController,
                    hintText: "Eg. 120000",
                    labelText: "Enter Principal",
                    errorMessage: "Please enter a number"),
                _gap,
                MyTextFormField(
                    controller: secondController,
                    hintText: "Eg. 12",
                    labelText: "Enter Time",
                    errorMessage: "Please enter a number"),
                _gap,
                MyTextFormField(
                    controller: thirdController,
                    hintText: "Eg.13",
                    labelText: "Enter Rate",
                    errorMessage: "Please enter a number"),
                _gap,
                MyButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    double firstNo = double.parse(firstController.text);
                    double secondNo = double.parse(secondController.text);
                    double thirdNo = double.parse(thirdController.text);
                    double si = (firstNo * secondNo * thirdNo)/100;
                    showMySnackBar(context: context, message: "Your SimpleInterest is = $si");
                  }
                }, text: "Calculate Simple Interest"),
              ],
            ),
          )
      ),
    );
  }
}
