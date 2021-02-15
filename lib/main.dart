import 'package:flutter/material.dart';

import 'Modules/Authentication/Screens/AppAuthentication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Task ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppAuthentication(),
    );
  }
}
