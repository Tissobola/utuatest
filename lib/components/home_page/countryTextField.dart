// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:utua_test/components/shared/sharedTextField.dart';

class CountryTextField extends StatefulWidget {
  TextEditingController countryTextFieldController;
  CountryTextField({super.key, required this.countryTextFieldController});

  @override
  State<CountryTextField> createState() => _CountryTextFieldState();
}

class _CountryTextFieldState extends State<CountryTextField> {
  @override
  Widget build(BuildContext context) {
    return SharedTextField(
      controller: widget.countryTextFieldController,
      type: "país de origem",
    );
  }
}
