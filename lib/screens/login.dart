import 'package:flutter/material.dart';
import 'account_service.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Set the border radius
                    borderSide:
                        const BorderSide(width: 1), // Set the border width
                  ),
                  labelText: "Email",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Set the border radius
                    borderSide:
                        const BorderSide(width: 1), // Set the border width
                  ),
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                login(_emailController.text, _passwordController.text, context);
              },
              child: const Text('Log In'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                fixedSize: MaterialStateProperty.all<Size>(
                  const Size(130, 50),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
