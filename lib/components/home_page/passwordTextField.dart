// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  bool passwordTextFieldVisibility;
  TextEditingController passwordTextFieldController;
  PasswordTextField({
    super.key,
    required this.passwordTextFieldController,
    required this.passwordTextFieldVisibility,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        // controller
        controller: widget.passwordTextFieldController,
        // decoration of the text field
        autofocus: true,
        obscureText: !widget.passwordTextFieldVisibility,
        decoration: InputDecoration(
          hintText: 'Insira a sua senha...',
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
          suffixIcon: InkWell(
            onTap: () => setState(
              () => widget.passwordTextFieldVisibility =
                  !widget.passwordTextFieldVisibility,
            ),
            focusNode: FocusNode(skipTraversal: true),
            child: Icon(
              widget.passwordTextFieldVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: Color(0xFF757575),
              size: 22,
            ),
          ),
        ),
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.black,
        ),
        textAlign: TextAlign.start,
        // password validator
        validator: (val) {
          if (val == null || val.isEmpty) {
            return 'Insira uma senha!';
          }
          if (val.length < 8) {
            return 'Sua senha deve conter ao menos 8 caracteres!';
          }
          return null;
        },
      ),
    );
  }
}
