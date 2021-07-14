import 'package:flutter/material.dart';

class AddBusiness extends StatefulWidget {
  

  @override
  _AddBusinessState createState() => _AddBusinessState();
}

class _AddBusinessState extends State<AddBusiness> {
      String          _businessImage;
      String          _businessOwner;
      String          _businessName;
      String          _businessEmail;
      String          _businessLocation;
      String          _businessContact;
      String          _businessFoundedYear;
      String          _businessCatagory;
      String          _businessMoto;
      String          _businessDescription;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildBusinessImage() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Business Image'),      
      validator: (String value) {
        if (value.isEmpty) {
          return 'Image is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _businessImage = value;
      },
    );
  }

  Widget _buildBusinessOwner() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Business Owner',hintText: 'Warren Buffet'),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Required field';
        }

        return null;
      },
      onSaved: (String value) {
        _businessOwner = value;
      },
    );
  }

  Widget _buildBusinessName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Business Name',hintText: 'NetSol'),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Business Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _businessName = value;
      },
    );
  }

  Widget _buildBusinessEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Business Email',hintText: 'abc@example.com'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _businessEmail = value;
      },
    );
  }

  Widget _buildBusinessLocation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Business Location',hintText: 'Room 8, Ali Hall, UET Taxila'),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Location is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _businessLocation = value;
      },
    );
  }

  Widget _buildBusinessContact() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Business Contact No.',
        hintText: '03********'
        
        ),
        
      keyboardType: TextInputType.number,
      validator: (String value) {
        int contact = int.tryParse(value);

        if (contact == null || contact <= 0) {
          return 'Contact must be greater than 0';
        }

        return null;
      },
      onSaved: (String value) {
        _businessContact = value;
      },
    );
  }
  Widget _buildBusinessFoundedYear() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Founded Year',
        hintText: '1957'
        ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int foundedyear = int.tryParse(value);

        if (foundedyear == null ) {
          return 'Required Field';
        }
        else if(foundedyear > 4)
        {
          return "Must Be Valid Year";
        }

        return null;
      },
      onSaved: (String value) {
        _businessFoundedYear = value;
      },
    );
  }  
  Widget _buildBusinessCatagory() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Business Catagory'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Catagotry Must be Selected';
        }

        return null;
      },
      onSaved: (String value) {
        _businessCatagory = value;
      },
    );
  }
  Widget _buildBusinessMoto() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Business Moto', hintText: 'Business Goals'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Requred field';
        }

        return null;
      },
      onSaved: (String value) {
        _businessMoto = value;
      },
    );
  }
  Widget _buildBusinessDescription() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Business Description',hintText: 'Description'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Required Field';
        }

        return null;
      },
      onSaved: (String value) {
        _businessDescription = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Business" ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildBusinessImage(),
                _buildBusinessOwner(),
                _buildBusinessName(),
                _buildBusinessEmail(),
                _buildBusinessLocation(),
                _buildBusinessContact(),
                _buildBusinessFoundedYear(),
                _buildBusinessCatagory(),
                _buildBusinessMoto(),
                _buildBusinessDescription(),                
                SizedBox(height: 100),
                ElevatedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_businessImage);
                    print(_businessOwner);
                    print(_businessName);
                    print(_businessEmail);
                    print(_businessLocation);
                    print(_businessContact);
                    print(_businessFoundedYear);
                    print(_businessCatagory);
                    print(_businessMoto);
                    print(_businessDescription);
                    

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}