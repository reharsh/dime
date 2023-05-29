import 'package:dime/screens/tasks.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'account_service.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 70,
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                text: "Tasks",
              ),
              Tab(text: "Feed"),
            ],
            indicatorWeight: 1.5,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              color: Colors.black,
              fontSize: 13,
            ),
          ),
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.only(left: 12.0), // Set the desired margin
            child: Image.asset('assets/images/Icon.png'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  child: Text("Log Out"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color?>(Colors.white),
                    overlayColor:
                        MaterialStateProperty.all<Color?>(Colors.white),
                  ),
                  onPressed: () {
                    logout(context);
                  }),
            )
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Tasks(),
            Center(child: Text('Tab 2 content')),
          ],
        ));
  }
}
