import 'package:flutter/material.dart';

import '../common/my_snackbar.dart';
import '../widgets/my_button.dart';
import '../widgets/my_textfield.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  @override
    final TextEditingController firstController =TextEditingController();

    final _gap = SizedBox(height: 10,);
    final _formKey = GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Area of Circle Screen", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.black),
        body: Padding(
            padding : EdgeInsets.all(8),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  MyTextFormField(
                      controller: firstController,
                      hintText: "Eg. 12",
                      labelText: "Enter Radius",
                      errorMessage: "Please enter a number"),
                  _gap,
                  MyButton(onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      double firstNo = double.parse(firstController.text);
                      double area = 3.14*firstNo*firstNo;
                      showMySnackBar(context: context, message: "Your SimpleInterest is = $area");
                    }
                  }, text: "Calculate Simple Interest"),
                ],
              ),
            )
        ),
      );
  }
}
