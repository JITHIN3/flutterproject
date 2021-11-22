import 'package:flutter/material.dart';

class Uipage3 extends StatefulWidget {
  const Uipage3({Key? key}) : super(key: key);

  @override
  _Uipage3State createState() => _Uipage3State();
}

class _Uipage3State extends State<Uipage3> {
  bool _value = false;
  int val = -1;
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
                borderRadius: BorderRadius.circular(200),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
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
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Enter Details',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Details',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
           ListTile(
              title: Text("Option 1"),
              leading: Radio(
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    _value=true;

                  });
                },
                activeColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text("Option 2"),
              leading: Radio(
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    _value=true;

                  });
                },
                activeColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text("Option 3"),
              leading: Radio(
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    _value=true;

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
                          borderRadius: BorderRadius.circular(20))),
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
