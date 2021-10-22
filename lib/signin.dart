import 'package:floorplan/routes/routenames.dart';
import 'package:floorplan/styles/colors.dart';
import 'package:floorplan/styles/commons.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Common common = Common();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        leading: Container(),
        leadingWidth: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
        alignment: Alignment.center,
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  common.textInputBox(
                      controller: email, labelText: 'Email Address'),
                  const SizedBox(height: 12.0),
                  common.textInputBox(
                      controller: password, labelText: 'Password'),
                  const SizedBox(height: 32.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, homePageRoute);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22.0, horizontal: 18.0),
                      width: MediaQuery.of(context).size.width * 0.50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 12.0,
                              offset: const Offset(0.0, 6.0),
                            )
                          ]),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Palette.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, signUpRoute);
                    },
                    child: const Text(
                      'Don\'t Have an Account? Sign up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
