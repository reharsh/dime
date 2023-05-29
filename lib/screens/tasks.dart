import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  void createTask() async {
    final client = Client()
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject('646daa0fec7e78728a69');

    Databases databases = Databases(client);

    try {
      final document = await databases.createDocument(
        databaseId: '6473a2f15c2163b2f9b9',
        collectionId: '6473a302e5da1c1a0b0d',
        documentId: ID.unique(),
        data: {
          "title": "Complete the dime for better",
          "start_time": DateTime.now().toIso8601String(),
          "end_time": DateTime.now().toIso8601String(),
        },
        permissions: [Permission.read(Role.any())],
      );
      print("Task Created successfully!");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [Text("data"), Text("data"), Text("data"), Text("data")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle button press
          createTask();
          print('Button pressed');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
