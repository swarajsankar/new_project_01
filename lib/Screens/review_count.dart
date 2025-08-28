import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project_01/widgets/appcolors.dart';
import 'package:new_project_01/widgets/custom_button.dart';
import 'package:new_project_01/widgets/custom_button2.dart';
import 'package:new_project_01/widgets/custom_container1.dart';
import 'package:new_project_01/widgets/custom_container2.dart';
import 'package:new_project_01/widgets/custom_input_fields.dart';

class ReviewCount extends StatefulWidget {
  const ReviewCount({super.key});

  @override
  State<ReviewCount> createState() => _ReviewCountState();
}

class _ReviewCountState extends State<ReviewCount> {
  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.shortestSide / 375;
    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButton(text: "Edit Count"),
            CustomButton2(text: "Submit to ERP"),
          ],
        )

      ],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text("Review Count", style: GoogleFonts.roboto(color: Colors.white)),
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
            SizedBox(height: 35 * scale),
            Column(
              children: [
                Center(
                  child: Text(
                    "Session #1042 Review",
                    style: GoogleFonts.roboto(
                      fontSize: 22 * scale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "3 products counted",
                  style: GoogleFonts.roboto(color: Appcolor.Dim, fontSize: 14 * scale),
                ),
              ],
            ),
            ///////////////////////////////////////////////////////////
            Column(
              children: [
                SizedBox(height: 30*scale,),
                ReviewCountContainer(
                  product: "Wireless Mouse M325",
                  ucode: "SKU:MS-325-BLACK",
                  count: "12/142",
                  cerp: "counted/ERP",
                  color: Appcolor.error,
                ),
                ReviewCountContainer(
                  product: "Mechanical Keyboard K68",
                  ucode: "SKU: KB-68-RGB",
                  count: "92/87",
                  cerp: "counted/ERP",
                  color: Appcolor.sucecess,
                ),
                ReviewCountContainer(
                  product: "Webcam C920",
                  ucode: "SKU: WC-920-HD",
                  count: "56/56",
                  cerp: "counted/ERP",
                  color: Appcolor.sucecess,
                ),

              ],
            ),
            SizedBox(height: 20*scale,),
            CustomContainer2(units: "-34 units", status: "Needs Approvel"),
            SizedBox(height: 30*scale,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomInputFields(hint: "Enter the notes for this count", heading: 'Notes',)

            ],),
            SizedBox(height: 20*scale,)
          ],
        ),
      ),
    );
  }
}
