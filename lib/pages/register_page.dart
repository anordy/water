import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:water/pages/home_page.dart';
import 'package:water/pages/signIn_Page.dart';


class RegisterPage extends StatefulWidget {
 
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   static double blockHeight;
  static double  blockWidth;
    int selectedRadioTile;

      String status;
  List statusItem = ['Status', 'Single', 'Married', 'Divorced'];

  @override
    void initState() {
      super.initState();
      selectedRadioTile = 0;
    }

    setSelectedRadioTile(int val ) {
        setState(() {
                  selectedRadioTile = val;
                });
    }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    blockWidth = screenWidth /100;
    blockHeight = screenHeight /100;

    return Scaffold(
      backgroundColor: Color(0xFF003458),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 35,right: 35,top: 120),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: TextField(
                            decoration: InputDecoration(
                            labelText: "First Name",
                            suffixIcon: Icon(FontAwesomeIcons.questionCircle,color: Colors.grey,),
                            labelStyle: new TextStyle(color: Colors.grey)),
                      ),
                 ),
                     Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: TextField(
                            decoration: InputDecoration(
                            labelText: "Last Name",
                            suffixIcon: Icon(FontAwesomeIcons.questionCircle,color: Colors.grey,),
                            labelStyle: new TextStyle(color: Colors.grey)),
                      ),
                 ),    
                        Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: TextField(
                            decoration: InputDecoration(
                            labelText: "Email",
                            suffixIcon: Icon(FontAwesomeIcons.questionCircle,color: Colors.grey,),
                            labelStyle: new TextStyle(color: Colors.grey)),
                      ),
                 ), 

                        Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: TextField(
                            decoration: InputDecoration(
                            labelText: "Job Title",
                            suffixIcon: Icon(FontAwesomeIcons.questionCircle,color: Colors.grey,),
                            labelStyle: new TextStyle(color: Colors.grey)),
                      ),
                 ), 
                 Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: TextField(
                            decoration: InputDecoration(
                            labelText: "Phone Number",
                            suffixIcon: Icon(FontAwesomeIcons.questionCircle,color: Colors.grey,),
                            labelStyle: new TextStyle(color: Colors.grey)),
                      ),
                 ),
                 SizedBox(height: 10),
                             Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 23,right: 23),
                            child: DropdownButton(
                              dropdownColor: Color(0xFF003458),
                              hint: Text('Status'),
                              value: status,
                              isExpanded: true,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                size: 35,
                              ),
                              items: statusItem.map((e) {
                                return DropdownMenuItem(
                                    value: status, child: Text(e));
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  status = val;
                                });
                              },
                            ),
                          ),
                        ),
                  SizedBox(height: 15,),
                 Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: TextField(
                            decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: Icon(FontAwesomeIcons.eye,color: Colors.grey,),
                            labelStyle: new TextStyle(color: Colors.grey)),
                      ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: TextField(
                            decoration: InputDecoration(
                            labelText: "Re-type Password",
                            suffixIcon: Icon(FontAwesomeIcons.eye,color: Colors.grey,),
                            labelStyle: new TextStyle(color: Colors.grey)),
                      ),
                 ),
                SizedBox(height: 20,),
       
              SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: MaterialButton(
                      
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      height: blockHeight * 7,
                      minWidth: blockWidth * 70,
                      child: Text(
                        'SIGN UP',
                        style: GoogleFonts.ubuntu(color: Colors.white54,fontSize: 18),
                      ),
                      color: Colors.blue,
                    ),
                  ), 
                  SizedBox(height: 20),
                        Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: InkWell(
                  onTap: () {
                     Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                                  child: Row( 
                    children: [
                    Icon(Icons.arrow_back_ios),
                    SizedBox(width: 5),
                      Text(
                          'Back to Login',
                          style: GoogleFonts.ubuntu(
                              fontSize: blockWidth *3.8, color: Colors.grey),
                      ),
                       
                    ],
                  ),
                ),
              ),
                    
            ],
          ),
        ),
      ),
      
    );
  }
}
