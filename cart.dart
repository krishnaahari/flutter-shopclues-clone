
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
      home: carthead(),
    );
  }
}


class carthead extends StatefulWidget{
  @override
  cart createState() => cart();
}

class cart extends State<carthead>{





  @override
  Widget build(BuildContext context){
    return Scaffold(
             appBar: AppBar(
               leading: Icon(Icons.arrow_back,color: Colors.blue,),
           backgroundColor: Colors.white,
          title: Text( "Cart:" , 
           style: TextStyle(color: Colors.black,fontSize: 24.0,fontFamily: "times New roman",fontWeight: FontWeight.bold),
          ),
         actions: <Widget>[
        
       
       
         ],
         
        ),

     
    );
  }
}