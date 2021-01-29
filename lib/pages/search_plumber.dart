import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text('search'),),
 body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
        decoration: InputDecoration(
          
                border: OutlineInputBorder(
                  
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.search,color: Colors.grey,),
                hintText: 'Search Plumber'),
      ),
      ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 25,
                  child: Icon(Icons.person),
                  ),
              title: Text('Studio, Kinondoni',
                  style: GoogleFonts.ubuntu(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  ),
         subtitle: Text('Marium Athman'),
            ),
              ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 25,
                  child: Icon(Icons.person),
                  ),
              title: Text('Mwenge, Ubungo',
                  style: GoogleFonts.ubuntu(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  ),
         subtitle: Text('Jose Mathias'),
            ),
              ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 25,
                  child: Icon(Icons.person),
                  ),
              title: Text('Sinza, Kinondoni',
                  style: GoogleFonts.ubuntu(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  ),
         subtitle: Text('John Doe'),
            ),
              ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 25,
                  child: Icon(Icons.person),
                  ),
              title: Text('Buza, Temeke',
                  style: GoogleFonts.ubuntu(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  ),
         subtitle: Text('Agness Victor'),
            ),
              ],
            ),
          )
          
          ),
    );
  }
}