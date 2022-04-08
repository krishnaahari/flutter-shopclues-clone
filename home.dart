// import 'package:flutter/material.dart';



// class homepage extends StatefulWidget{
//   @override
//    _homepage createState() => _homepage();
// }

// class _homepage extends State<homepage>{

//   Widget customcard(){
//     return Padding(
//       padding:EdgeInsets.symmetric(
//         vertical: 20.0,
//         horizontal: 30.0
//       ),
//      child: Material(
//        elevation: 10.0,
//        child: Container(
//          child: Column(
//            children: <Widget>[
//              Padding(
//                padding:EdgeInsets.all(20.0),
//                child: ClipOval(
//                  child: Image(image:AssetImage(
//                    "images/img14.jpg",
//                  )),
//                  ),
//                )
//            ],
//          ),
//        ),
//      ),
//       );
//   }

//   @override
//   Widget build(BuildContext conetxt){
//     return Scaffold(
//     backgroundColor: Colors.white,
//     body: ListView(
//       children: <Widget>[
//         customcard(),
//       ],
//       ),
//     );
//   }
// }


import 'dart:io';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

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
      home: myhomename(),
    );
  }
}


class myhomename extends StatefulWidget{
  @override
  _myhome createState() => _myhome();
}

class _myhome extends State<myhomename>{

void checkcon() async{
  try{
    var result= await InternetAddress.lookup('google.com');
    if(result.isNotEmpty && result[0].rawAddress.isNotEmpty){
      print("connected");
    }
  }on SocketException catch(_){
    print("no connection");
  }
}

// void checkcon() async{
//   var result=await(Connectivity().checkConnectivity());
//   if(result==ConnectivityResult.none){
//     print("no connection");
//   }else if(result==ConnectivityResult.wifi){
//     print("wifi connected");
//   }else if(result==ConnectivityResult.mobile){
//     print("mobile connected");
//   }
// }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        title: Text("LOGIN PAGE"),
        backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.blue[100],
        body:Container(
          
          child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             Text(
               "Status",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 24.0,
                 fontWeight: FontWeight.bold,
               ),
              
             ),    
            RaisedButton(
              onPressed:checkcon, 
              child: Text("Click"),
              ),
       
        
          ],
          ),
        ) ,   
    );
  }
}