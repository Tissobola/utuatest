// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:utua_test/components/shared/sharedTextField.dart';

class EmailTextField extends StatefulWidget {
  TextEditingController emailTextFieldController;
  EmailTextField({
    super.key,
    required this.emailTextFieldController,
  });

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return SharedTextField(
      controller: widget.emailTextFieldController,
      type: "email",
    );
  }
}
