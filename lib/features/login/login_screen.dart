import 'package:flutter/material.dart';
import 'package:smart_habit_tracker/core/utils/validators.dart';
import 'package:smart_habit_tracker/features/login/login_controller.dart';
import 'package:smart_habit_tracker/widgets/app_button.dart';
import 'package:smart_habit_tracker/widgets/app_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _controller = LoginController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
        child: Form(
          key: _controller.formKey,
          child: Column(
            children: [
              AppInput(
                labelText: "Login",
                hintText: "Enter your username",
                controller: _controller.usernameController,
                validator: Validators.validateUsername,
              ),

              SizedBox(height: 20),

              AppInput(
                labelText: "Password",
                hintText: "Enter your password",
                controller: _controller.passwordController,
                validator: Validators.validatePassword,
              ),

              SizedBox(height: 20),

              AppButton(
                onPressed: () => _controller.login(context),
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
