import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Artist',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w300,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          Text(
            'Ariana Grande',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w800,
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
