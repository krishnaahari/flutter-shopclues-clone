

// ******************for products app*************

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Vip.dart';
import 'package:flutter_application_1/Wishlist.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/category.dart';
import 'package:flutter_application_1/community.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/second.dart';



void main(){
  runApp(myapp());
}


class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   return MaterialApp(
     title: "mywork",
     theme: ThemeData(
       primarySwatch: Colors.lightBlue,
     ),
     home: myhome(),
   );   
  }
}

class myhome extends StatefulWidget{
  @override
  Myhome_create  createState() => Myhome_create();
}






class Myhome_create extends State<myhome>{



List<String> toshow = [
  'https://lh3.googleusercontent.com/bN5CzUt9uQ7nir1S1Ee1cVurDU8f4FbRWPyVvws3FsPLM9L1RMNKbwHubwIfJvl23qDS',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  'https://images.pexels.com/photos/6945/sunset-summer-golden-hour-paul-filitchkin.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
];

List<String> togrow = [
   'https://lh3.googleusercontent.com/bN5CzUt9uQ7nir1S1Ee1cVurDU8f4FbRWPyVvws3FsPLM9L1RMNKbwHubwIfJvl23qDS',
  'https://s3.ap-south-1.amazonaws.com/affiliatecubber/images/offer_banners/shopcluescom-best-selling-beauty-products-1609309014.png',
  'https://ci3.googleusercontent.com/proxy/EG7wAZoOF_QcqazMakQ7OH-Kc60toprqj2K7XXIPjdE6UiQYRWnd5UNeHXMllFEZD27dDJAKX7BGMzQOkIky0TfEGUpZliwivwFtna8Jsqvk3zetAJEaWGH2vIHfXhM=s0-d-e1-ft#http://cdn.shopclues.com/images/mailer/Applainces_12jun/applainces_01.jpg',
  'https://dog55574plkkx.cloudfront.net/images/shopclues-offers.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeWc2ibV-wMHgmCNOSipIo7HcaE2pYb0XRmeRa1JVynbdnrtduPROu79dP0-I6rSl3PYw&usqp=CAU',
  'http://images.shopclues.com/images/mailer/tupperware/tupperwear.jpg',
  'http://images.shopclues.com/images/mailer/lunchbox/lunchbox.jpg',
  'https://play-lh.googleusercontent.com/u0TlbVMWJSlscovM75hZqedUfB6A39sN1N1YEt-0sQB6SGTIqLEHWNH4cG8xYxP7NHg',
  'http://images.shopclues.com/images/mailer/lunchbox/lunchbox.jpg',
];

    Widget cards(String src){
      return Container(
       height: 80.0,
        width: 100.0,
        margin: EdgeInsets.all(1.0),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(src),
           
          ],
        ),
      );
    }


    Widget cardt(String src){
      return Container(
       height: 250.0,
        width: 1500.0,
        margin: EdgeInsets.all(1.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(src,width: 350.0,),
          ],
        ),
      );
    }

   Widget search(){
     return Container(
       child: Row(
         children: <Widget>[
           TextField(
             decoration: InputDecoration(hintText: "search here"),
           ),
         ],
       ),
     );
   }

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: () async{
        print("back  button pressed");
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.white,
          title: Text( "SHOPCLUES" , 
           style: TextStyle(color: Colors.black,fontSize: 24.0,fontFamily: "times New roman",fontWeight: FontWeight.bold),
          ),
         actions: <Widget>[
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => searchhead()));
        }, icon:Icon(Icons.search)),
        IconButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => carthead()));
        
        }, icon: Icon(Icons.shopping_cart_outlined)),
       
         ],
         
        ),
       body:Padding(
         padding: EdgeInsets.all(1.0),
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child :Column(
           children: <Widget>[
              Text("Scrolling Horizontal Part-1---------------", style: TextStyle(color: Colors.redAccent,fontSize: 15.0,fontWeight: FontWeight.bold,)),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
                   child:Row(
                 children: <Widget>[
                   cards(toshow[0]),
                   cards(toshow[1]),
                   cards(toshow[2]),
                   cards(toshow[3]),
                   cards(toshow[4]),
                   cards(toshow[5]),
                   cards(toshow[6]),
                   cards(toshow[7]),

                 ],
          
          ),
             ),
             Text("Scrolling Horizontal Part-2---------------", style: TextStyle(color: Colors.purpleAccent,fontSize: 15.0,fontWeight: FontWeight.bold,)),
                     SingleChildScrollView(
               scrollDirection: Axis.horizontal,
                   child:Row(
                 children: <Widget>[
                   cards(toshow[0]),
                   cards(toshow[1]),
                   cards(toshow[2]),
                   cards(toshow[3]),
                   cards(toshow[4]),
                   cards(toshow[5]),
                   cards(toshow[6]),
                   cards(toshow[7]),

                 ],
          
          ),
                     ) ,
                     Text("Scrolling verticale---------------", style: TextStyle(color: Colors.green,fontSize: 20.0,fontWeight: FontWeight.bold,)),
                     Column( children: <Widget>[
                   cardt(togrow[0]),
                   cardt(togrow[1]),
                   cardt(togrow[2]),
                   cardt(togrow[3]),
                   cardt(togrow[4]),
                   cardt(togrow[5]),
                   cardt(togrow[6]),
                   cardt(togrow[7]),

                 ], 
                     ),       
           ],
           
           )
       ),
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

      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(child: SizedBox(
              height: 60.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => myhome()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                       Icon(
                         Icons.home,
                       ),
                       Text("Home"),
                  ],
                ),
              ),
            )
            ),

               Expanded(child: SizedBox(
              height: 60.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => categoryhead()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                       Icon(
                         Icons.category_outlined,
                       ),
                       Text("Category"),
                  ],
                ),
              ),
            )
            ),

               Expanded(child: SizedBox(
              height: 60.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => communityhead()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                       Icon(
                         Icons.business_center_rounded,
                       ),
                       Text("Community"),
                  ],
                ),
              ),
            )
            ),

               Expanded(child: SizedBox(
              height: 60.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => wishlisthead()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                       Icon(
                         Icons.favorite_border,
                       ),
                       Text("Wishlist"),
                  ],
                ),
              ),
            )
            ),

               Expanded(child: SizedBox(
              height: 60.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => viphead()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                       Icon(
                         Icons.account_circle_rounded,
                       ),
                       Text("VIP Circle"),
                  ],
                ),
              ),
            )
            ),
          ],
        ),
      ),


      ),
    );
  }
}


























































