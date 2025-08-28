import 'package:flutter/material.dart';
import 'package:new_project_01/Screens/print_barcode.dart';
import 'package:new_project_01/Screens/review_count.dart';

import 'Screens/counting_session.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountingSession(),
    );
  }
}
