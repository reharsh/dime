import 'package:flutter/material.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // Align the children vertically center
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Log In'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(130, 50),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Text(
                  'Create New Account',
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(150, 50),
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(0, 255, 255, 255)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
