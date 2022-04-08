import 'package:flutter/material.dart';
import 'package:flutter_application_1/second.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "LOGIN",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: searchhead(),
    );
  }
}


class searchhead extends StatefulWidget{
  @override
  search createState() => search();
}

class search extends State<searchhead>{





  @override
  Widget build(BuildContext context){
    return Scaffold(
             appBar: AppBar(
               leading: Icon(Icons.arrow_back,color: Colors.blue,),
           backgroundColor: Colors.white,
               
         actions: <Widget>[
       
       
         ],
         
        ),

     
    );
  }
}