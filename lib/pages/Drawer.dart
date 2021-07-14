import 'package:flutter/material.dart';

class DrawerBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width : width*0.6,
      child: Scaffold(
        body: Drawer(
          
           child: ListView(
             children: [
               UserAccountsDrawerHeader(
                 accountEmail: Text(
                   'abc@gmail.com',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 18,
                     fontWeight: FontWeight.bold

                     ),
                   
                   ),
                 accountName: Text(
                   'abc',
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold
                     )
                   ),
                 currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage('images/User.jpg'),
                  ),
                 ),
                 
                
                 decoration: BoxDecoration(
                   color: Colors.deepPurpleAccent,
                   image: DecorationImage(
                     image: AssetImage("assets/images/DrHeaderImg.png"),
                     fit: BoxFit.cover
                   ),
                 ),
               ),

               ListTile(
                 title: Text("Home"),
                 trailing: Icon(Icons.home),                 
                 ),
               ListTile(
                 title: Text("Catagories"),
                 trailing: Icon(Icons.list),
               ),
               ListTile(
                 title: Text("List Your Business"),
                 trailing: Icon(Icons.library_add_rounded),
               ),
               Divider(),
               ListTile(
                 title: Text("Profile"),
                 trailing: Icon(Icons.person),
               ),
               ListTile(
                 title: Text("Close"),
                 trailing: Icon(Icons.close_sharp),
                 onTap: () {
                 Navigator.of(context).pop();
                 }
                 ),
             ],
           ),      
        )
      ),
    );
  }
}

