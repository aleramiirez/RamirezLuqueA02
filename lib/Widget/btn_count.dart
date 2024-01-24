import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCount extends StatelessWidget {
  final String text;
  final double fontsize;
  final VoidCallback onPressed;

  const ButtonCount({
    Key? key,
    required this.text,
    required this.fontsize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 40.0,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: fontsize,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
