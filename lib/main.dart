import 'package:flutter/material.dart';
import 'package:go_find/pages/AddBusiness.dart';
import 'package:go_find/pages/Catagories.dart';
import 'package:go_find/pages/HomePage.dart';
import 'package:go_find/pages/Profile.dart';

void main() {
  runApp(MaterialApp(
    title:"Gofind",
    home: BottomNavBar(),
    debugShowCheckedModeBanner: false,
  ));
}

class BottomNavBar extends StatefulWidget {
  
  
  @override
  State<StatefulWidget> createState() {
    return _BottomNavBarState();
  }
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex=0;  
  final _options = [
    HomePage(), CatagoriesPage(),AddBusiness(),ProfilePage() 
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(     
      
      // appBar: AppBar(
      //   title: Text("Gofind"),        
      //   backgroundColor: Colors.blue,
      //    centerTitle: true,
      //    elevation: 0,
      //    shadowColor: Colors.black,
      // ),
            
      bottomNavigationBar: BottomNavigationBar(
        onTap: (currentIndex){
          setState(() {
            _selectedIndex = currentIndex;            
          });
        },              
        type: BottomNavigationBarType.fixed,        
        selectedItemColor: Colors.black,
                 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: "Home"

            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Colors.black),
            label: "Catagory"
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.library_add_rounded, color: Colors.black),
            label: "Add Business"
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: "Profile"
            )  
            
        ],
        backgroundColor: Colors.blue,
        
        
               
      ),
      body: _options[_selectedIndex]
    );
  }
}