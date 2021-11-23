import 'package:flutter/material.dart';

class Uipage3 extends StatefulWidget {
  const Uipage3({Key? key}) : super(key: key);

  @override
  _Uipage3State createState() => _Uipage3State();
}

class _Uipage3State extends State<Uipage3> {
  var _value=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Simple Asnyc prefilled form'),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            icon: Icon(Icons.arrow_back_sharp),
          ),
          backgroundColor: Colors.blueAccent),
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'I am prefilled 🔥 yeah',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Enter',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
Padding(padding: EdgeInsets.all(10),
),
           ListTile(
              title: Text("Option 1",style: TextStyle(color: Colors.white),),
             leading: Radio<int>(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value=value!;

                  });
                },
                activeColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text("Option 2",style: TextStyle(color: Colors.white),),
              leading: Radio<int>(
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value=value!;

                  });
                },
                activeColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text("Option 3",style: TextStyle(color: Colors.white),),
              leading: Radio<int>(
                value: 4,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value=value!;

                  });
                },
                activeColor: Colors.white,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(-1),
                      fixedSize: Size(340, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {},
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.black),
                  ),
                )),


           ]),
        ),
      ),
    );
  }
}
