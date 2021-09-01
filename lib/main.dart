import 'package:flutter/material.dart';

import 'features/presentation/screens/tabbar/tabbar_controller.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(primaryColor: Colors.white),
      home: RootController(),
    );
  }
}

class RootController extends StatefulWidget {
  const RootController({Key? key}) : super(key: key);
  @override
  _RootControllerState createState() => _RootControllerState();
}

class _RootControllerState extends State<RootController> {
  @override
  Widget build(BuildContext context) {
    return TabbarController();
  }
}
