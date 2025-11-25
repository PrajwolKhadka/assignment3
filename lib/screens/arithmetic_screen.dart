import 'package:assignment3/common/my_snackbar.dart';
import 'package:assignment3/widgets/my_button.dart';
import 'package:assignment3/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class ArthematicScreen extends StatefulWidget {
  const ArthematicScreen({super.key});

  @override
  State<ArthematicScreen> createState() => _ArthematicScreenState();
}

class _ArthematicScreenState extends State<ArthematicScreen> {
  final TextEditingController firstController =TextEditingController();
  final TextEditingController secondController = TextEditingController();

  final _gap = SizedBox(height: 10,);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arthmetic Screen", style: TextStyle(color: Colors.white)),
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
                    labelText: "Enter Number",
                    errorMessage: "Please enter a number"),
                _gap,
                MyTextFormField(
                    controller: secondController,
                    hintText: "Eg. 12",
                    labelText: "Enter Number",
                    errorMessage: "Please enter a number"),
                _gap,
                MyButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    int firstNo = int.parse(firstController.text);
                    int secondNo = int.parse(secondController.text);
                    int sum = firstNo + secondNo;
                    showMySnackBar(context: context, message: "$firstNo + $secondNo = $sum");
                  }
                }, text: "Addition"),
                _gap,
                MyButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    int firstNo = int.parse(firstController.text);
                    int secondNo = int.parse(secondController.text);
                    int sum = firstNo - secondNo;
                    showMySnackBar(context: context, message: "$firstNo - $secondNo = $sum");
                  }
                }, text: "Subtraction"),
                _gap,
                MyButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    int firstNo = int.parse(firstController.text);
                    int secondNo = int.parse(secondController.text);
                    int sum = firstNo * secondNo;
                    showMySnackBar(context: context, message: "$firstNo * $secondNo = $sum");
                  }
                }, text: "Multiply"),
                _gap,
                MyButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    int firstNo = int.parse(firstController.text);
                    int secondNo = int.parse(secondController.text);
                    int sum = firstNo ~/ secondNo;
                    showMySnackBar(context: context, message: "$firstNo / $secondNo = $sum");
                  }
                }, text: "Divide")
              ],
            ),
          )
      ),
    );
  }
}
