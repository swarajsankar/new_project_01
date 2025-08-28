import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolors.dart';
class CustomContainer3 extends StatelessWidget {
  const CustomContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.shortestSide / 375;

    return Container(
      decoration: BoxDecoration(
        color: Appcolor.Dim
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              "Wireless Mouse M325",
              style: GoogleFonts.roboto(
                fontSize: 22 * scale,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "SKU: MS-325-BLACK",
            style: GoogleFonts.roboto(color: Appcolor.Dim, fontSize: 17 * scale),
          ),
        ],
      ),
    );
  }
}
