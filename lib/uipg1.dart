import 'package:flutter/material.dart';

class Uipage extends StatefulWidget {
  const Uipage({Key? key}) : super(key: key);

  @override
  _UipageState createState() => _UipageState();
}

class _UipageState extends State<Uipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_sharp),
            ),
            title: const Text("Complex login"),
            backgroundColor: Colors.blueAccent),
        backgroundColor: Colors.blueAccent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),

                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Color(-1)),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(-1))),

                        labelText: "Email",
                        hintText: "used_email@domain.com",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(-1),
                        ),
                        hintStyle: TextStyle(color: Color(-1)),
                        labelStyle: TextStyle(color: Color(-1))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Color(-1)),
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(-1))),

                        labelText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(-1),
                        ),
                        hintText: "Enter your Password",
                        hintStyle: TextStyle(color: Color(-1)),
                        labelStyle: TextStyle(color: Color(-1))),
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
                        Navigator.pushNamed(context, '/second');
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
