// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../data/models/user.dart';
import '../../data/providers/database.dart';

class SendFormButton extends StatefulWidget {
  // Controllers
  TextEditingController nameTextFieldController;
  TextEditingController emailTextFieldController;
  TextEditingController passwordTextFieldController;
  TextEditingController countryTextFieldController;

  SendFormButton({
    super.key,
    required this.nameTextFieldController,
    required this.emailTextFieldController,
    required this.passwordTextFieldController,
    required this.countryTextFieldController,
  });

  @override
  State<SendFormButton> createState() => _SendFormButtonState();
}

class _SendFormButtonState extends State<SendFormButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF4B39EF),
        ),
        child: TextButton(
          onPressed: () async {
            // create account
            try {
              final user = User(
                name: widget.nameTextFieldController.text.trim(),
                email: widget.emailTextFieldController.text.trim(),
                password: widget.passwordTextFieldController.text.trim(),
                country: widget.countryTextFieldController.text.trim(),
              );
              await Database.addUser(user);
            } catch (ex) {
              print(ex);
            }
          },
          // button text
          child: Text(
            'Enviar',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
