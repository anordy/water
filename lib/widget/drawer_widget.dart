import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: SafeArea(child: Container(child: ListView(
        children: [DrawerHeader(
        decoration: BoxDecoration(
          color: Color(0xFF52A7CC)
        ),
            child:  Image.asset('assets/images/losoX.png'),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                  ListTile(
                  leading: Icon(Icons.search),
                  title: Text('Find us on Facebook'),
                ),
                Divider(color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(right: 190.0),
                  child: Text('Communicate'),
                ),
                  ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
                  ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Rate this App'),
                  ),
                  ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text('Send Feedback'),
                
                ),
                Divider(color: Colors.grey,),
                 Padding(
                  padding: const EdgeInsets.only(right: 220.0),
                  child: Text('Policies'),
                ),
                  ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text('Privacy Policy'),
                ),
                  ListTile(
                  leading: Icon(Icons.picture_as_pdf),
                  title: Text('Term Of Use'),
                ),
                  ListTile(
                  leading: Icon(Icons.message),
                  title: Text('F.A.Q'),
                ),
                Divider(color: Colors.grey,),
                 ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('LogOut'),
                ),
              ],
            ),
          )
          ],
      ),),),);
  }
}