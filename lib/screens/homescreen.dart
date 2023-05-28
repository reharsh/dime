import 'package:flutter/material.dart';
import 'account_service.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Align(
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("My Home"),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text("Log Out"),
                  onPressed: () {
                    logout(context);
                  })
            ])));
  }
}
