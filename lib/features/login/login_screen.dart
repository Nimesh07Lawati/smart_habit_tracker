import 'package:flutter/material.dart';
import 'package:smart_habit_tracker/widgets/app_button.dart';
import 'package:smart_habit_tracker/widgets/app_input.dart';
import 'package:math_equations/math_equations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void testingMyPackage() {
    QuadraticEquation equation = QuadraticEquation(a: 1, b: -3, c: 2);
  }

  void login() {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Please fill all fields")));
      return;
    }

    if (username == "admin" && password == "1234") {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Successful")));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Invalid credentials")));
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppInput(
              labelText: "Login",
              hintText: "Enter your username",
              controller: usernameController,
            ),

            SizedBox(height: 20),

            AppInput(
              labelText: "Password",
              hintText: "Enter your password",
              controller: passwordController,
            ),

            SizedBox(height: 20),

            AppButton(onPressed: login, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
