import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.cyan,
            child: ListView(children: [

              SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Colors.white, width: 1)),
                      prefixIcon:
                      Icon(Icons.person, color: Colors.indigo),
                      labelText: ("UserName"),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white, width: 1.0)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Colors.white, width: 1)),
                      prefixIcon:
                      Icon(Icons.password, color: Colors.indigo),
                      labelText: ("Password"),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white, width: 1.0)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              ElevatedButton(

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                  },
                  child: SizedBox(
                    width:double.infinity,

                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  style:ElevatedButton.styleFrom(

                      backgroundColor: Colors.indigo,
                      shape:StadiumBorder()
                      ,primary: Color.fromARGB(255, 228, 226, 226),
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16)
                  )

              )
            ]),
          )),
    );;
  }
}
