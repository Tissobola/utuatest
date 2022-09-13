// ignore_for_file: must_be_immutable

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SharedTextField extends StatefulWidget {
  TextEditingController controller;
  String type;
  SharedTextField({
    super.key,
    required this.controller,
    required this.type,
  });

  @override
  State<SharedTextField> createState() => _SharedTextFieldState();
}

class _SharedTextFieldState extends State<SharedTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: TextFormField(
            // select keyboard type
            keyboardType: chooseKeyboard(widget.type),
            // select the controller of the text field
            controller: widget.controller,
            // decoration of the text field
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Insira o seu ${widget.type}...',
              hintStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.grey,
              ),
              // border decorations
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF4B39EF),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF4B39EF),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE91E63),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE91E63),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
            ),
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
            // Validation of the Controllers
            validator: (val) => validate(widget.type, val!)));
  }

  validate(String type, String val) {
    if (val.isEmpty) {
      return 'Insira um $type!';
    }
    if (type == "email") {
      if (!EmailValidator.validate(val)) {
        return 'Email inválido!';
      }
    }
    return null;
  }

  chooseKeyboard(String type) {
    if (type == "email") {
      return TextInputType.emailAddress;
    } else {
      return TextInputType.text;
    }
  }
}
