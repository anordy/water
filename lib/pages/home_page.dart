import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water/pages/cartegory_details.dart';
import 'package:water/pages/search_plumber.dart';
import 'package:water/widget/drawer_widget.dart';

class HomePage extends StatelessWidget {
   static double blockWidth;
  static double blockHeight;
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    blockWidth = screenWidth /100;
    blockHeight = screenHeight /100;
    return Scaffold(
      backgroundColor: Color(0xFF003458).withOpacity(0.9),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right : 20.0),
            child: InkWell(
              onTap: () {
                   Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SearchPage()));
                       
                             
              },
                          child: Icon(FontAwesomeIcons.user
              ),
            ),
          )
        ],
      ),
     drawer: DrawerWidget(),
     body: CustomScrollView(
       slivers: [
               SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(left: 5 ,top: 5, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                     InkWell(
                       onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Text('W',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Water Resources',
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
         
            ),
                     ),
            Divider(color: Colors.grey),    
                InkWell(
                    onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                  child: ListTile(
              leading: CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    radius: 35,
                    child: Text('S',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Sources Fresh Water',
                    style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
         
            ),
                ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Text('W',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Water Uses',
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 35,
                  child: Text('W',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Water Stress',
                  style: GoogleFonts.ubuntu(
                                          color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.yellow[200],
                  radius: 35,
                  child: Text('W',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Water and Conflicts',
                  style: GoogleFonts.ubuntu(
                                          color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
  onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  radius: 35,
                  child: Text('V',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Virtual Water',
                  style: GoogleFonts.ubuntu(
                                          color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Text('F',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Fresh Water',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,

                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  radius: 35,
                  child: Text('W',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Water Footprint',
                  style: GoogleFonts.ubuntu(
                                          color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Text('D',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Definition and Measures  ',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Text('W',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Water footprint of nations',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 35,
                  child: Text('E',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Economic Water of Scacity',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Text('I',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Imfrastracture',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,

                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.purpleAccent,
                  radius: 35,
                  child: Text('M',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Modelling Water Resource system',
                  style: GoogleFonts.ubuntu(
                                          color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Text('C',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Characteristics of Process to be modelled',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,
                  )),
         
            ),
                    ),
            Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: Text('S',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Surface water quality monitoring',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,
                  )),
         
            ),
                    ),
                      Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  radius: 35,
                  child: Text('S',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Sea Water',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,
                  )),
         
            ),
                    ),
                      Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  radius: 35,
                  child: Text('R',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('River Thames',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,
                  )),
         
            ),
                    ),
                      Divider(color: Colors.grey),
                    InkWell(
                        onTap: () {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CategoryDetails()));
                       },
                                          child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  radius: 35,
                  child: Text('T',style: TextStyle(fontSize: 30,color: Colors.white),)),
              title: Text('Tap Water',
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                                          color: Colors.white,
                  )),
         
            ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 15)
          ])),
        
       ],
     ),
    );
  }
}