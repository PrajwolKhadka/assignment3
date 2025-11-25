import 'package:flutter/material.dart';

import '../common/my_snackbar.dart';
import '../widgets/my_button.dart';
import '../widgets/my_textfield.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  @override
  final TextEditingController firstController = TextEditingController();

  final _gap = const SizedBox(height: 10);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Palindrome Checker",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyTextFormField(
                  controller: firstController,
                  hintText: "Eg. 121",
                  labelText: "Enter Number",
                  errorMessage: "Please enter a number"),
              _gap,
              MyButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {

                    int numb = int.parse(firstController.text);

                    int original = numb;
                    int reversed = 0;

                    while (numb > 0) {
                      int digit = numb % 10;
                      reversed = reversed * 10 + digit;
                      numb ~/= 10;
                    }

                    if (original == reversed) {
                      showMySnackBar(
                        context: context,
                        message: "$original is a Palindrome",
                      );
                    } else {
                      showMySnackBar(
                        context: context,
                        message: "$original is NOT a Palindrome",
                      );
                    }
                  }
                },
                text: "Check Palindrome",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
