import 'package:utua_test/components/home_page/countryTextField.dart';
import 'package:utua_test/components/home_page/emailTextField.dart';
import 'package:utua_test/components/home_page/sendFormButton.dart';

import '../components/home_page/nameTextField.dart';
import '../components/home_page/passwordTextField.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController? countryTextFieldController;

  TextEditingController? emailTextFieldController;

  TextEditingController? nameTextFieldController;

  TextEditingController? passwordTextFieldController;

  late bool passwordTextFieldVisibility;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    countryTextFieldController = TextEditingController();
    emailTextFieldController = TextEditingController();
    nameTextFieldController = TextEditingController();
    passwordTextFieldController = TextEditingController();
    passwordTextFieldVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // app bar
      appBar: AppBar(
        backgroundColor: Color(0xFF4B39EF),
        automaticallyImplyLeading: false,
        title: Text(
          'Cadastro',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      // app body
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Name Text Field
                    NameTextField(
                      nameTextFieldController: nameTextFieldController!,
                    ),
                    // Email Text Field
                    EmailTextField(
                      emailTextFieldController: emailTextFieldController!,
                    ),
                    // Password Text Field
                    PasswordTextField(
                      passwordTextFieldController: passwordTextFieldController!,
                      passwordTextFieldVisibility: passwordTextFieldVisibility,
                    ),
                    // Country Text Field
                    CountryTextField(
                      countryTextFieldController: countryTextFieldController!,
                    ),
                    // Send Form Button
                    SendFormButton(
                      nameTextFieldController: nameTextFieldController!,
                      emailTextFieldController: emailTextFieldController!,
                      passwordTextFieldController: passwordTextFieldController!,
                      countryTextFieldController: countryTextFieldController!,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
