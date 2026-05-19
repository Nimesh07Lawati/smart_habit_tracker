import 'package:flutter/material.dart';
import 'package:smart_habit_tracker/widgets/app_button.dart';
import 'package:smart_habit_tracker/widgets/app_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppInput(labelText: "Login", hintText: "Enter your username"),
          SizedBox(height: 20),
          AppInput(labelText: "Password", hintText: "Enter your password"),
          SizedBox(height: 20),
          AppButton(onPressed: () {}, child: Text("Login")),
        ],
      ),
    );
  }
}
