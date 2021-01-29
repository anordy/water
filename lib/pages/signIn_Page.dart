import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:water/pages/home_page.dart';
import 'package:water/pages/register_page.dart';


class SignInPage extends StatefulWidget {
 
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
   static double blockHeight;
  static double  blockWidth;
    int selectedRadioTile;
  bool _checked = false;

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
          padding: const EdgeInsets.only(left: 35,right: 35),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset('assets/images/loso9.png'),
              ),
          
              // SizedBox(height: 15,),
                 Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: TextField(
                            decoration: InputDecoration(
                            labelText: "Email",
                            suffixIcon: Icon(FontAwesomeIcons.questionCircle,color: Colors.grey,),
                            labelStyle: new TextStyle(color: Colors.grey)),
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
                SizedBox(height: 20,),
            CheckboxListTile( 
              title: Text('Stay Logged In.',style: GoogleFonts.roboto(color: Colors.white54),),
              value: _checked,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool val) {
                    setState(() {
                      _checked = val;
                    });
              },
              activeColor: Colors.blue,
            ),
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
                        'SIGN IN',
                        style: GoogleFonts.ubuntu(color: Colors.white54,fontSize: 18),
                      ),
                      color: Colors.blue,
                    ),
                  ), 
                  SizedBox(height: 10,),
                          Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Forgot Password',
                      style: GoogleFonts.ubuntu(
                          fontSize: blockWidth *3.8, color: Colors.grey),
                    ),
                     InkWell(
                       onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RegisterPage()));
                       },
                                            child: Text(
                        'Sign Up',
                        style: GoogleFonts.ubuntu(
                            fontSize: blockWidth *3.8, color: Colors.grey),
                    ),
                     ),
                  ],
                ),
              ),
                    
            ],
          ),
        ),
      ),
      
    );
  }
}
