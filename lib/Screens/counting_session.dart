import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project_01/widgets/appcolors.dart';
import 'package:new_project_01/widgets/custom_button.dart';
import 'package:new_project_01/widgets/custom_button2.dart';
import 'package:new_project_01/widgets/custom_container3.dart';

class CountingSession extends StatefulWidget {
  const CountingSession({super.key});

  @override
  State<CountingSession> createState() => _CountingSessionState();
}

class _CountingSessionState extends State<CountingSession> {
  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.shortestSide / 375;
    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButton(text: "Cancel"),
            CustomButton2(text: "Save & Continue"),
          ],
        )

      ],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text(" Counting Session", style: GoogleFonts.roboto(color: Colors.white)),
        backgroundColor: Appcolor.Primary,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomContainer3()


          ],
        )
      ),
    );
  }
}
