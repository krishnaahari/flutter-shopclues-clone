import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class splashscreen extends StatefulWidget{
  @override
   _splashscreen createState() => _splashscreen();
}

class _splashscreen extends State<splashscreen>{
   
  //  @override
  //  void initstate(){
  //    super.initState();
  //    Timer(Duration(seconds:3), (){
  //      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> homepage()));
  //    });
  //  }
   
   
   
    @override
    Widget build(BuildContext context){
      return Scaffold(

        appBar: AppBar(
           leading: IconButton(
             onPressed: (){},
            icon: Icon(Icons.arrow_back),
            ),
            backgroundColor: Colors.white,
          title:Text("Make money", style: TextStyle(fontSize: 20.0,color: Colors.yellow[700]),),
         
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(2.0),
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Container(
                    height:150.0,
                    width: 400.0,
                    child: Image.asset('assests/images/refer.jpg'),
                    margin: EdgeInsets.all(9.0),
                  ),
                  Text("5 WAYS TO EARN MONEY",style: TextStyle(color: Colors.black),),
                  Container(
                    height:70.0,
                    width: 400.0,
                    padding: EdgeInsets.all(13.0),
                    color: Colors.blue[50],
                    margin: EdgeInsets.all(9.0),
                    child: DropdownButton<String>(items:[
                      DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                         DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                    ],
                    onChanged: (_value){

                    },
                    hint: Text("Refer & Earn \n Earn unlimited",style: TextStyle(color: Colors.black),),
                    
                    ),
                  ),
                     Container(
                    height:70.0,
                    width: 400.0,
                    color: Colors.blue[50],
                    padding: EdgeInsets.all(13.0),
                    margin: EdgeInsets.all(9.0),
                      child: DropdownButton<String>(items:[
                      DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                         DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                    ],
                    onChanged: (_value){

                    },
                    hint: Text("Refer & Earn \n Earn unlimited",style: TextStyle(color: Colors.black),),
                    
                    ),
                  ),
                     Container(
                    height:70.0,
                    width: 400.0,
                    color: Colors.blue[50],
                    padding: EdgeInsets.all(13.0),
                    margin: EdgeInsets.all(9.0),
                      child: DropdownButton<String>(items:[
                      DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                         DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                    ],
                    onChanged: (_value){

                    },
                    hint: Text("Refer & Earn \n Earn unlimited",style: TextStyle(color: Colors.black),),
                    
                    ),
                  ),
                     Container(
                    height:70.0,
                    width: 400.0,
                    color: Colors.blue[50],
                    padding: EdgeInsets.all(13.0),
                    margin: EdgeInsets.all(9.0),
                      child: DropdownButton<String>(items:[
                      DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                         DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                    ],
                    onChanged: (_value){

                    },
                    hint: Text("Refer & Earn \n Earn unlimited",style: TextStyle(color: Colors.black),),
                    
                    ),
                  ),
                     Container(
                    height:70.0,
                    width: 400.0,
                    color: Colors.blue[50],
                    padding: EdgeInsets.all(13.0),
                    margin: EdgeInsets.all(9.0),
                      child: DropdownButton<String>(items:[
                      DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                         DropdownMenuItem(
                        value: "web",
                        child: Center(child: Text("web"),),
                        ),
                    ],
                    onChanged: (_value){

                    },
                    hint: Text("Refer & Earn \n Earn &700",style: TextStyle(color: Colors.black),),
                    
                    ),
                  ),
                ],
              ),
          )
        ),
        );
    }
}