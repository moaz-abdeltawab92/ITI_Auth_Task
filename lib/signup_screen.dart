import 'package:auth_task2/blue_container.dart';
import 'package:auth_task2/custom_button.dart';
import 'package:auth_task2/custom_text_form_field.dart';
import 'package:auth_task2/login_screen.dart';
import 'package:auth_task2/custom_text_row.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlueContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            const Text(
              "Signup",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(flex: 1),
            const CustomTextFormField(
                hintText: "Email", prefixIcon: Icons.email),
            const CustomTextFormField(
                hintText: "Password", prefixIcon: Icons.password),
            const CustomTextFormField(
              hintText: "Confirm Password",
              prefixIcon: Icons.password,
            ),
            const Spacer(flex: 1),
            CustomButton(color: Colors.black, text: "Signup", onPressed: () {}),
            const SizedBox(height: 10),
            TextRow(
              unClickableText: "Already Have an Account?  ",
              clickableText: "Login",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
