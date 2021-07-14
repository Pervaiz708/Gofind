import 'package:flutter/material.dart';
import 'package:go_find/pages/Drawer.dart';

class HomePage extends StatefulWidget {
 

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gofind"),
         centerTitle: true,
         elevation: 0,
         shadowColor: Colors.black,
         backgroundColor: Colors.blue[600],
         actions: <Widget>[
           IconButton(icon: Icon(Icons.search), 
           padding: EdgeInsets.all(5),
           onPressed: () {
                
                }),
         ],
      ),
      drawer: DrawerBar(    
      ),
      // // bottomNavigationBar: BottomNavBar(

      // ),
      body: Container(
       child: Stack(
         children: <Widget>[
           Container(
               child: Column(
                 children: <Widget>[
                    Text('Restaurants',
                    style: TextStyle())
                 ],
               ),
           ),
           SizedBox(
             width: double.infinity,
             height:150,
             child: Container(               
               decoration: BoxDecoration(
               image: DecorationImage(
               image: AssetImage(
                      'images/headerImage.jpg'
                      ),
                      fit: BoxFit.cover
               )
               
             ),
               
         ),
         
           ),
           
         ]
       ),
      ),
        
      
    );
  }
}