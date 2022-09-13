// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:utua_test/components/shared/sharedTextField.dart';

class NameTextField extends StatefulWidget {
  TextEditingController nameTextFieldController;
  NameTextField({
    super.key,
    required this.nameTextFieldController,
  });

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  @override
  Widget build(BuildContext context) {
    return SharedTextField(
      controller: widget.nameTextFieldController,
      type: "name",
    );
  }
}
