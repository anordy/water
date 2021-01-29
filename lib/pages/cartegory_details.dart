
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water/widget/drawer_widget.dart';

class CategoryDetails extends StatefulWidget {
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
 static double blockWidth;
  static double blockHeight;
  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    blockWidth = screenWidth /100;
    blockHeight = screenHeight /100;
 
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Water Resources'),
      
      ),
      body:  CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([
            Column(
          children: [
      SizedBox(
        height: blockHeight * 35,
        width: blockWidth * 100,
        child:       Carousel(
          boxFit: BoxFit.cover,
              autoplay: true,
              dotBgColor: Colors.transparent,
              dotSize: 7,
              dotSpacing: 12,
              dotIncreasedColor: Colors.green,
              dotColor: Colors.black.withOpacity(0.3),
              animationDuration: Duration(milliseconds: 800),
              images: [
                AssetImage('assets/images/pipe5.webp'),
                AssetImage('assets/images/pipe2.webp'),
                AssetImage('assets/images/pipe3.jpg'),
                AssetImage('assets/images/pipe4.jpg'),
                AssetImage('assets/images/pie1.jpg'),
              ],
            ),
      ),


        Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                   boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ]),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text('Description',style: GoogleFonts.ubuntu(fontSize: 18),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('lcecuwev ncweinviwe wekncioneoedqd ekncenx cweonioefbu cubef w ueeauis eubjfauefen eucfbjebufe uiefbeuf ai eufa f ufewbo cufqwefua uiofeuf usheb weubuod ceufeniao eufaisia fbeifnea infeufn einiaoeip qfweenewfe efweu vds uauf eifoe cebweifbe fweufnwei weuvwebew vreef iehfi erijieefwe iheg8fb hiwerb0fwg rihwwgbog ruf. ',style: GoogleFonts.ubuntu(letterSpacing: 2,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('lcecuwev ncweinviwe wekncioneoedqd ekncenx cweonioefbu cubef w ueeauis eubjfauefen eucfbjebufe uiefbeuf ai eufa f ufewbo cufqwefua uiofeuf usheb weubuod ceufeniao eufaisia fbeifnea infeufn einiaoeip qfweenewfe efweu vds uauf eifoe cebweifbe fweufnwei weuvwebew vreef iehfi erijieefwe iheg8fb hiwerb0fwg rihwwgbog ruf. ',style: GoogleFonts.ubuntu(letterSpacing: 2,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('lcecuwev ncweinviwe wekncioneoedqd ekncenx cweonioefbu cubef w ueeauis eubjfauefen eucfbjebufe uiefbeuf ai eufa f ufewbo cufqwefua uiofeuf usheb weubuod ceufeniao eufaisia fbeifnea infeufn einiaoeip qfweenewfe efweu vds uauf eifoe cebweifbe fweufnwei weuvwebew vreef iehfi erijieefwe iheg8fb hiwerb0fwg rihwwgbog ruf. ',style: GoogleFonts.ubuntu(letterSpacing: 2,),),
                      )
                    ],
                  ),
            ),)
          
          ],
        ),
     
          ])),
          
       
        ],
      ),
   
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: (){
       
      },),
    );
  }


}

