import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';

final Client client = Client()
  ..setEndpoint(
      'https://cloud.appwrite.io/v1') // Replace with your Appwrite endpoint
  ..setProject('646daa0fec7e78728a69'); // Replace with your Appwrite project ID

Future<void> createAccount(
    String email, String password, String name, BuildContext context) async {
  Account account = Account(client);

  final successBar = SnackBar(
    content: const Text('Account Created!!'),
  );

  const failBar = SnackBar(
    content: Text('Please Try Again!'),
  );

  try {
    final response = await account.create(
        userId: ID.unique(), email: email, password: password, name: name);
    final userId = response.$id;
    ScaffoldMessenger.of(context).showSnackBar(successBar);
    Navigator.pop(context);
    print('Account created successfully! User ID: $userId');
  } catch (e) {
    print('Failed to create account: $e');
    ScaffoldMessenger.of(context).showSnackBar(failBar);
  }
}

Future<void> login(String email, String password, BuildContext context) async {
  const failBar = SnackBar(
    content: Text('Please Try Again!'),
  );

  try {
    Account account = Account(client);

    // Create a new session with email and password
    await account.createEmailSession(email: email, password: password);

    // Get the current user details
    final response = await account.get();
    final user = response.name;
    // Do something with the user data, such as saving it to local storage or updating the app state
    Navigator.pushNamed(context, '/home');
    print('Logged in successfully: $user');
  } catch (e) {
    print('Login failed: $e');
    ScaffoldMessenger.of(context).showSnackBar(failBar);
  }
}

Future<void> logout(BuildContext context) async {
  Account account = Account(client);

  try {
    final response = account.deleteSession(sessionId: "current");
    Navigator.pushNamed(context, '/loginsignup');
    print("LOGGED OUT!");
  } catch (e) {
    print("The ERROR: $e");
  }
}
