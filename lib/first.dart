// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyMaterial();
  }
}

class MyMaterial extends State<MyApp> {
  TextEditingController emailText = new TextEditingController();
  TextEditingController passText =new TextEditingController();
  String email="tarig@gmail.com",pass="112233";
  String ress="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.delete,
              color: Colors.white,
              size: 35,
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  labelText: "Email...",
                  border: OutlineInputBorder(),
                  hintText: "YourEmail@gmail.com"
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: passText,
                decoration: InputDecoration(
                  labelText: "Passwords...",
                  border: OutlineInputBorder(),
                  hintText: "ex:Nmok@87",
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                   if(email==emailText.text && pass==passText.text){
                    ress="Welcome";
                   }
                   else{
                    ress="Invalid email or pass";
                   }
                  });
                },
               child:Text("Login",style: TextStyle(color: Colors.red,fontSize: 30),),
               ),
               SizedBox(height: 20,),
               Text(ress,style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),)
            ],
          )
          ),
      ),
    );
  }
}
