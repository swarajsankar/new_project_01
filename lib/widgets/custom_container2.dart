import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project_01/widgets/appcolors.dart';
class CustomContainer2 extends StatelessWidget {
  final String units;
  final String status;
  const CustomContainer2({super.key,
    required this.units,
    required this.status});

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.shortestSide / 375;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0*scale),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20*scale,vertical: 20*scale),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Appcolor.Dim.withOpacity(.2)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Variance:",style: GoogleFonts.roboto(
                  fontSize: 17*scale,
                  fontWeight: FontWeight.bold
                ),),
                Text(units,style: GoogleFonts.roboto(
                  color: Appcolor.error,
                  fontSize: 17*scale,
                ),)
              ],
            ),
            SizedBox(height: 10*scale,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Text("Status:",style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 17*scale,
                    ),),
                Text(status,style: GoogleFonts.roboto(
                  fontSize: 17*scale,
                ),)
              ],
            )

          ],
        ),
      ),
    );
  }
}
