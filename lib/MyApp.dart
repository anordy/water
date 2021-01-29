
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:water/pages/signIn_Page.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            switch (snapshot.connectionState) {
              
                case ConnectionState.done:
                case ConnectionState.none:
              return MaterialApp(
          debugShowCheckedModeBanner: false,

          title: 'Br Buy and Sell',
          theme: ThemeData(
            primaryColor: Colors.blue
          ),
          home:  SplashScreen(
              seconds: 3,
              useLoader: true,
              loaderColor: Colors.purple,
              navigateAfterSeconds: SignInPage(),
              image: Image.asset(
                'assets/images/losoX.png',           
              ),
              backgroundColor: Color(0xFF003458),
              photoSize: 200.0,
              pageRoute: _createRoute()));
              break;
              case ConnectionState.waiting:
              case ConnectionState.active:
              return Container();
              break;
            } 
               return Container();
           }
          
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SignInPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
