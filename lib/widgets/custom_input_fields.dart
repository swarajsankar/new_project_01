import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project_01/widgets/appcolors.dart';
class CustomInputFields extends StatelessWidget {
  final String hint;
  final String heading;
  const CustomInputFields({super.key, required this.hint,
    required this.heading});

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.shortestSide / 375;

    final _notes = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading,style: GoogleFonts.roboto(
            fontSize: 17*scale,
            color: Appcolor.Dim
          ),),
          SizedBox(height: 4*scale,),
          TextField(
            controller: _notes,
            decoration: InputDecoration(
              labelText: hint,
              labelStyle: GoogleFonts.roboto(
                fontSize: 17*scale,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
