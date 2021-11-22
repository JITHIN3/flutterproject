import 'package:flutter/material.dart';

class Uipage2 extends StatefulWidget {
  const Uipage2({Key? key}) : super(key: key);

  @override
  _Uipage2State createState() => _Uipage2State();
}

class _Uipage2State extends State<Uipage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Complex Async prefilled form'),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.arrow_back_sharp),
          ),
          backgroundColor: Colors.blueAccent),
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),

                    ),
                    hintText: 'Prefilled text field',
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Enter',
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.emoji_emotions_outlined,
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
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),

                    hintText: 'Enter Name',
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Enter user name',
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
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(-1),
                        fixedSize: Size(340, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
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
                      'CLEAR',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
