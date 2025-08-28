import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project_01/widgets/appcolors.dart';
class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.shortestSide / 375;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 12.0*scale),
      child: ElevatedButton(onPressed: (){},
        child: Text(text,style: GoogleFonts.roboto(
          fontSize: 17*scale
        ),),
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: Appcolor.Primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12*scale)
        ),
        backgroundColor: Colors.white,
        foregroundColor: Appcolor.Primary,

        padding: EdgeInsets.symmetric(vertical: 12*scale,horizontal: 35*scale)
      ),),
    );
  }
}
