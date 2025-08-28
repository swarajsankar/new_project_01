import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project_01/widgets/appcolors.dart';

class ReviewCountContainer extends StatelessWidget {
  final String product;
  final String ucode;
  final String count;
  final String cerp;
  final Color color;

  const ReviewCountContainer({
    super.key,
    required this.color,
    required this.product,
    required this.ucode,
    required this.count,
    required this.cerp,
  });

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.shortestSide / 375;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 40.0 * scale,
        vertical: 5 * scale,
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product,
                        style: GoogleFonts.roboto(
                          fontSize: 17 * scale,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ucode,
                        style: GoogleFonts.roboto(
                          color: Appcolor.Dim,
                          fontSize: 12 * scale,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      count,
                      style: GoogleFonts.roboto(
                        fontSize: 15 * scale,
                        color: color,
                      ),
                    ),
                    Text(
                      cerp,
                      style: GoogleFonts.roboto(
                        color: Appcolor.Dim,
                        fontSize: 12 * scale,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(color: Appcolor.Dim, thickness: .5),
          ],
        ),
      ),
    );
  }
}
