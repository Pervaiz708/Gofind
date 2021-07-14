import 'package:flutter/material.dart';

class CatagoriesPage extends StatefulWidget {
  
  @override
  _CatagoriesPageState createState() => _CatagoriesPageState();
}

class _CatagoriesPageState extends State<CatagoriesPage> {
  @override
  Widget build(BuildContext context) {
    final icons = [Icons.food_bank, Icons.hotel,
      Icons.business, Icons.car_repair, Icons.plumbing,
      Icons.shopping_cart, Icons.shop, Icons.electrical_services,
      Icons.dry_cleaning, Icons.phone];
     final titles = ['Restaurant', 'Hotel', 'Contractor', 'Auto Services',
      'Plumbing', 'Shopping', 'Salon', 'Electrician', 'Dry cleaning','Phone Services']; 
    return Scaffold(
        appBar: AppBar(
          title: Text('Catagories'),
          centerTitle: true,
          elevation: 0,

        ),
        backgroundColor: Colors.blue[50],
        body: Container(
          child: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueGrey, //                           <-- Card widget
            child: ListTile(
              trailing: Icon(icons[index],color: Colors.white,),
              title: Text(titles[index],
              style: TextStyle(
                color: Colors.white, 
                 fontSize: 18,
                 fontWeight: FontWeight.bold
                 ),
            ),
            onTap: (){

            },
            )
          );
        },
      
      )
        )        
     );
  }
}