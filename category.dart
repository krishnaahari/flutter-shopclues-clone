
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
      home: categoryhead(),
    );
  }
}


class categoryhead extends StatefulWidget{
  @override
  category createState() => category();
}

class category extends State<categoryhead>{

Widget frame(){
  return Container(
child: Column(
  children: [
    Text("my name is krishna",style: TextStyle(color: Colors.black,fontSize: 20.0),),
  ],
),

  );

}



  @override
  Widget build(BuildContext context){
    return Scaffold(
             appBar: AppBar(
           backgroundColor: Colors.white,
          title: Text( "SHOPCLUES" , 
           style: TextStyle(color: Colors.black,fontSize: 24.0,fontFamily: "times New roman",fontWeight: FontWeight.bold),
          ),
         actions: <Widget>[
        IconButton(onPressed: (){}, icon:Icon(Icons.search)),
        IconButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => splashscreen()));
        
        }, icon: Icon(Icons.shopping_cart_outlined)),
       
       
         ],
         
        ),

         drawer: Drawer(
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("krishna Ahari"),
                 accountEmail: Text("mitchatchain678@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    child: Text("P",
                      style: TextStyle( fontSize:45.0, fontWeight: FontWeight.w200),
                    ),
                    backgroundColor: Colors.green,
                  ), 
                 ),
              
              ListTile(
                leading: Image.asset('assests/images/img15.jpeg',height: 50, width: 50,),
                title: Text("Refer Friends and Earn \n Earn #700 CluesBucks+",
                style: TextStyle(color:Colors.black,
                    fontSize: 10.0,
                    ),
                ),
                onTap: (){},
                trailing: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                  shape: Border.all(width: 2.0, color:Colors.lightBlue),
                  onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (context) => splashscreen()));}, 
                  child: Text("Refer Now",
                    style: TextStyle(color:Colors.lightBlue[800],
                    fontSize: 13.0,
                    ),
                  ),
                  ),
              ),
              Divider(
                height: 2.0,
              ),
                ListTile(
                leading: Icon(Icons.timelapse_sharp),
                title: Text("Time Sale"),
                onTap: (){},
              ),
                ListTile(
                leading: Icon(Icons.done_all_sharp),
                title: Text("Daily Deals"),
                onTap: (){},
              ),
                ListTile(
                leading: Icon(Icons.update),
                title: Text("Just Launched Corner"),
                onTap: (){},
              ),
                ListTile(
                leading: Icon(Icons.person),
                title: Text("Men's fashion"),
                onTap: (){},
              ),

               ListTile(
                leading: Icon(Icons.person),
                title: Text("Women's Fashion"),
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.kitchen),
                title: Text("Home & kitchen"),
                
                onTap: (){},
              ),

              ListTile(
                leading: Icon(Icons.offline_pin_outlined),
                title: Text("Made In India"),
                
                onTap: (){},
              ),

              ListTile(
                leading: Icon(Icons.mobile_screen_share),
                title: Text("Mobile & Accesories"),
                
                onTap: (){},
              ),

              ListTile(
                leading: Icon(Icons.toys_outlined),
                title: Text("Toys Baby & Kids"),
                
                onTap: (){},
              ),

              ListTile(
                leading: Icon(Icons.tv),
                title: Text("Tv & Large Appliances"),
                
                onTap: (){},
              ),

              ListTile(
                leading: Icon(Icons.car_repair),
                title: Text("Automative"),
                
                onTap: (){},
              ),

              
              ListTile(
                leading: Icon(Icons.sports_baseball_outlined),
                title: Text("Sports & Health"),
                
                onTap: (){},
              ),

              
              ListTile(
                leading: Icon(Icons.electric_car),
                title: Text("Electronics"),
                
                onTap: (){},
              ),
              
            ],
          ),
        ),
        ),

        body: Padding(
          padding: EdgeInsets.all(1.0),
          child: Column(
            children: <Widget>[
              Expanded(child: Container(
                width: 120.0,
                child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                child: Column(
                  
                  children: <Widget>[
                              Container(
                height: 70.0,
                width: 80.0,
                child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute<void>(
  builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Page')),
      body: Center(
        child: TextButton(
          child: Text('POP'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  },
));}),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,),
                  image: DecorationImage(
                    image: AssetImage('assests/images/mens2.png'),
                  )
                ),
              ),
              Text("Mens's wear"),
              Divider(color: Colors.blue,thickness: 3,),
                    Container(
                height: 70.0,
                width: 80.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,),
                  image: DecorationImage(
                    image: AssetImage('assests/images/female2.png'),
                  )
                ),
              ),
              Text("female's wear"),
              Divider(color: Colors.blue,thickness: 3,),
                       Container(
                height: 70.0,
                width: 80.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,),
                  image: DecorationImage(
                    image: AssetImage('assests/images/tablets2.png'),
                  )
                ),
              ),
              Text("Mobile & tablets"),
              Divider(color: Colors.blue,thickness: 3,),
                       Container(
                height: 70.0,
                width: 80.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,),
                  image: DecorationImage(
                    image: AssetImage('assests/images/essen2.png'),
                  )
                ),
              ),
              Text("Essential & more"),
              Divider(color: Colors.blue,thickness: 3,),
                        Container(
                height: 70.0,
                width: 80.0,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,),
                  image: DecorationImage(
                    image: AssetImage('assests/images/utensils2.png'),
                  )
                ),
              ),
              Text("Home kitchen"),
              Divider(color: Colors.blue,thickness: 3,), 
                  ],
                ),
                ),
              ))
  
            ],
          ),
        ),   
    );
  }
}