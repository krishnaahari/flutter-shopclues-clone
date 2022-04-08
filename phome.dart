import 'package:flutter/cupertino.dart';

import 'package:flutter_application_1/secondbook.dart';
import 'package:flutter/material.dart';

class carditem{
  final String image;
  final String title;
  final String has;

  const carditem({
    required this.image,
    required this.title,
    required this.has,
  });
}
class homeproject extends StatefulWidget{
   @override
    _homeproject createState() => _homeproject();
}

class _homeproject extends State<homeproject>{
  
  // List<String> newbooks=[
       
  // ];

  List<carditem> items=[
    carditem(
      image:"assests/images/book1.jpg",
      title:"Leaving Time",
      has:"@45",
    ),
     carditem(
      image:"assests/images/book2.jpg",
      title:"English Improve",
      has:"@67",
    ),
     carditem(
      image:"assests/images/book3.jpg",
      title:"Charlottes Web",
      has:"@89",
    ),
     carditem(
      image:"assests/images/book4.jpg",
      title:"The Ocean At End",
      has:"@123",
    ),
  ];

    List<carditem> itemt=[
    carditem(
      image:"assests/images/book1.jpg",
      title:"Book Name:tiger",
      has:"Price:@45",
    ),
     carditem(
      image:"assests/images/book2.jpg",
      title:"Book Name:Jungle",
      has:"Price:@67",
    ),
     carditem(
      image:"assests/images/book3.jpg",
      title:"English Poetry",
      has:"Price:@89",
    ),
     carditem(
      image:"assests/images/book4.jpg",
      title:"Hindi poems",
      has:"Price:@123",
    ),
  ];
   Widget buildbox({required carditem items,}) =>  Container(
                         height: 140,
                         width: 153,
                         margin: EdgeInsets.only(bottom: 20),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.blue[100],
                          //  image: DecorationImage(image: AssetImage('assests/images/img15.jpeg')
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Expanded(
                               child: 
                             AspectRatio(aspectRatio: 4/3,
                             child:ClipRRect(
                               borderRadius: BorderRadius.circular(10),
                               child: Material(
                                 child: Ink.image(image: AssetImage(items.image),
                                 fit: BoxFit.fill,
                                 child: InkWell(
                                   onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => secondpage(items:items)));
                                   },
                                 ),
                                 ),
                               ),
                              //  child:Image.asset(items.image,width: 56,),
                             ),
                             ),
                             ),
                          Container(
                            padding: EdgeInsets.only(top: 4,left: 18),
                            child:Text(items.title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300),), 
                          ),                
                               Container(
                            padding: EdgeInsets.only(top: 6,left: 50),
                             child:Text(items.has,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300),), 
                          ),  
                            
                           ],
                         ),
                       );
  Widget buildsecond({required carditem itemt,}) =>  Container(
                         height: 180,
                         width: 130,
                         margin: EdgeInsets.only(bottom: 14,right: 17),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.purple[300],
                          //  image: DecorationImage(image: AssetImage('assests/images/img15.jpeg')
                         ),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                              Expanded(
                               child: 
                             AspectRatio(aspectRatio: 3/10,
                             child:ClipRRect(
                               borderRadius: BorderRadius.circular(10),
                               child: Material(
                                 child: Ink.image(image: AssetImage(itemt.image),
                                 fit: BoxFit.fill,
                                 child: InkWell(
                                   onTap: (){},
                                 ),
                                 ),
                               ),
                             ),
                             ),
                             ),
                             Container(
                               margin: EdgeInsets.only(right: 70,top: 20),
                               padding: EdgeInsets.only(left: 20,top: 15,right: 2,),
                             child:Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(itemt.title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.white)),
                                 Text(itemt.has,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color:Colors.white)),
                                 FlatButton(onPressed: (){},color: Colors.red,child: Text("BUY NOW",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),),
                                  FlatButton(onPressed: (){},color: Colors.yellow,child: Text("ADD TO CART",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),)
                               ],
                             ),
                             ),
                             
                           ],
                         ),
                       );
  @override
      Widget build(BuildContext context){
        return Scaffold(
          body: Container(
            child: ListView(
              children: [
                Padding(padding: EdgeInsets.only(left: 20,top: 16,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Hii,KUKI",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0,fontFamily: "The Times New Roman",),),
                   Text("Discover latest Book",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20.0,fontFamily: "The Times New Roman",),),
                   Container(
                     height: 39,
                     margin: EdgeInsets.only(left:16,right: 20,top: 18),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.grey[300],
                       boxShadow: [
                         BoxShadow(blurRadius: 10.0,offset: Offset(0,20),color: Colors.blue.withOpacity(0.6),spreadRadius: -16.0)
                       ],
                     ),
                     child: Stack(
                       children: [
                              TextField(
                                maxLengthEnforced: true,
                                style: TextStyle(color: Colors.blue,fontSize: 18),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10,bottom:6),
                                  border: InputBorder.none,
                                  hintText: "Search Book",
                                  
                                ),
                              ),
                           
                            Positioned(
                              right: 0,
                              bottom: 0,
                              top: 1,
                              
                              child: Container(
                                color: Colors.blue,
                                child: IconButton(onPressed: (){}, 
                            icon: Icon(Icons.search,color: Colors.white,)),
                              ),
                            
                            )
                
                       ],
                       ),
                   ),
                   Container(
                     height: 25,
                     margin: EdgeInsets.only(left: 0.0,top: 30),
                     padding: EdgeInsets.only(left: 20),
                     child: DefaultTabController(
                       length: 3,
                       child: TabBar(
                         labelPadding: EdgeInsets.all(0),
                         indicatorPadding: EdgeInsets.all(0),
                         isScrollable: true,
                         labelColor: Colors.blue,
                         unselectedLabelColor: Colors.black,
                         labelStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                         unselectedLabelStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                         tabs: [
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text("new"),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text("Trending"),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text("Best Seller"),
                          ),
                        ),
                       ],),
                       ),
                   ),

                   Container(
                     margin: EdgeInsets.only(top: 21),
                     height: 260,
                     child: ListView.separated(
                       itemCount: items.length,
                       separatorBuilder: (context,_) =>SizedBox(width: 10,),
                       physics: BouncingScrollPhysics(),
                       scrollDirection: Axis.horizontal,
                       itemBuilder:(context,index) => buildbox(items: items[index]),
                       ),
                   ),
                   Container(
                     width: 320,
                    margin: EdgeInsets.only(left: 10),
                    // decoration: BoxDecoration(border: Border.all(color:)), 
                    child: Text("New Recent Sells:-",
                    style: TextStyle(fontSize: 20,fontFamily: "The Times of New Roman",fontWeight: FontWeight.w600,color: Colors.orange[700]),
                    )
                    ),
                       Container(
                     margin: EdgeInsets.only(top: 25,bottom: 50),
                     height: 300,
                     child: ListView.separated(
                       itemCount: itemt.length,
                       separatorBuilder: (context,_) =>SizedBox(width: 10),
                       physics: BouncingScrollPhysics(),
                       scrollDirection: Axis.vertical,
                       itemBuilder:(context,index) => buildsecond(itemt: itemt[index]),
                       ),
                   )
                ],),
                ),
              ],),    
          ),
        );
      }

}