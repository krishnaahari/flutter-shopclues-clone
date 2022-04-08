
import 'dart:ui';

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
      home: viphead(),
    );
  }
}


class viphead extends StatefulWidget{
  @override
  vip createState() => vip();
}

class vip extends State<viphead>{





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
                  shape: Border.all(width: 1.0, color:Colors.lightBlue),
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

        body:Container(
            color: Colors.white,
           child:Padding(
          padding: EdgeInsets.all(8.0),
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              width: 140.0,
              height: 80.0,
               margin: EdgeInsets.symmetric(vertical: 25.0,horizontal: 100.0),
                decoration:BoxDecoration(shape: BoxShape.circle,
                 image: DecorationImage(
                   image: AssetImage('assests/images/man2.png'),
                 ),
                ),
            ),
            Text("Krishna Ahari"),
            Text("mitchatchaimn678@gmail.com"),
            Row(
              children: <Widget>[
                Container(
                   width: 90.0,
              height: 60.0,
              margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                    decoration:BoxDecoration(shape: BoxShape.circle,
                 image: DecorationImage(
                   image: AssetImage('assests/images/mobile2.png'),
                 ),
                ),
                ),
                Text("App update available ",style: TextStyle(fontSize: 16.0)),
                MaterialButton(
                  onPressed:(){},
                  color: Colors.blue[300],
                  child: Text("Update",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                  ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                  Container(
                   width: 90.0,
              height: 60.0,
              margin: EdgeInsets.symmetric(vertical: 3.0,horizontal: 0.0),
                    decoration:BoxDecoration(shape: BoxShape.circle,
                 image: DecorationImage(
                   image: AssetImage('assests/images/share2.png'),
                 ),
                ),
                ),
                Expanded(
                  child: Text('Refer & Earn &700 CluesBucks+ \n Refer your Friends to join shopclues',style: TextStyle(fontSize: 10.0),),
                  ),
                 MaterialButton(
                  onPressed:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => splashscreen()));
                  },
                  color: Colors.white,
                  shape: Border.all(width: 1.0,color: Colors.blue),
                  child: Text("Refer Now",style: TextStyle(color: Colors.blue,fontSize: 15.0),),
                  ),
              ],
            ),
           Divider(),
           Column(
             children: <Widget>[
                ListTile(
                leading: Icon(Icons.card_travel_rounded ,color: Colors.blue,),
                title: Text("My Orders"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.favorite_outline_outlined ,color: Colors.blue,),
                title: Text("Wishlist"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.card_membership_outlined,color: Colors.blue,),
                title: Text("VIP Club Member"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.circle_notifications ,color: Colors.blue,),
                title: Text("My Goodybag"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.arrow_drop_down_circle,color: Colors.blue,),
                title: Text("My CluesBucks"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.play_circle_fill_rounded,color: Colors.blue,),
                title: Text("My clueBucks++"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.share,color: Colors.blue,),
                title: Text("Refer & Earn"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.account_circle_rounded,color: Colors.blue,),
                title: Text("My Profile"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.account_balance_sharp ,color: Colors.blue,),
                title: Text("Bank Details"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.location_on,color: Colors.blue,),
                title: Text("Location"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.star_rate_sharp,color: Colors.blue,),
                title: Text("Rate your Purchase"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.help_outline_outlined,color: Colors.blue,),
                title: Text("Help & Support"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.rate_review,color: Colors.blue,),
                title: Text("Rate the App"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.live_help,color: Colors.blue,),
                title: Text("Legal"),
                
                onTap: (){},
              ),
               ListTile(
                leading: Icon(Icons.more_horiz_outlined,color: Colors.blue,),
                title: Text("More"),
                
                onTap: (){},
              ),
                            ],
             )
          ],
          
          ),
          ),
        ),
        ), 
    );
  }
}