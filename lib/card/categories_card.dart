import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 35,
                  child: Icon(Icons.picture_as_pdf_rounded)),
              title: Text('Commecial & Offices (6)',
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Text(
                '6 Ads',
                style: GoogleFonts.ubuntu(color: Colors.black),
              ),
           )
         
      ],
    );
  }
}