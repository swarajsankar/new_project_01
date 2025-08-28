import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project_01/widgets/appcolors.dart';
import 'package:new_project_01/widgets/custom_button.dart';
import 'package:new_project_01/widgets/custom_button2.dart';
import '../widgets/dropdownmenu.dart';

class PrintBarcode extends StatefulWidget {
  const PrintBarcode({super.key});

  @override
  State<PrintBarcode> createState() => _PrintBarcodeState();
}

class _PrintBarcodeState extends State<PrintBarcode> {
  String? number = '2';
  final numbers = ['1', '2', '3', '4', '5'];
  final printers = ["Zebra ZD420 (Bluetooth)","Honeywell PM45 (WIFI)","Epson TM-T88V"];
  String? value="Zebra ZD420 (Bluetooth)";

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.shortestSide / 375;
    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButton(text: "Cancel"),
            CustomButton2(text: "Print Label"),
          ],
        )
      ],
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        backgroundColor: Appcolor.Primary,
        title: Text("Print Barcode",
            style: GoogleFonts.roboto(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 30 * scale),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0 * scale,vertical: 30*scale),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10 * scale),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Appcolor.Dim),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "MS-325-BLACK",
                        style: GoogleFonts.roboto(fontSize: 22 * scale),
                      ),
                    ),
                    Image.asset(
                      "Assets/bar.jpg",
                      width: 200 * scale,
                      height: 190 * scale,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Number of labels",style: GoogleFonts.roboto(
                    fontSize: 17*scale,
                    color: Appcolor.Dim
                ),),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 2*scale),
                  child: OutlinedDropdown<String>(
                    width: 270*scale,
                    value: number,
                    items: numbers
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (v) => setState(() => number = v),
                    hintText: 'Select',
                  ),
                ),

              ],
            ),
            SizedBox(height: 10*scale,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Printer",style: GoogleFonts.roboto(
                    fontSize: 17*scale,
                    color: Appcolor.Dim
                ),),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 2*scale),
                  child: OutlinedDropdown<String>(
                    width: 270*scale,
                    value: value,
                    items: printers
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (v) => setState(() => value = v),
                    hintText: 'Select',
                  ),
                ),

              ],
            ),
            SizedBox(height: 20*scale,)

          ],
        ),
      ),
    );
  }
}
