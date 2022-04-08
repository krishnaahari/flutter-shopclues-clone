import 'package:flutter/material.dart';
import 'package:flutter_application_1/list.dart';

class ItemWidget extends StatelessWidget{
  final Item item;

  const ItemWidget({ Key? Key,required this.item}):assert(item!= null), super(key: Key);

  @override
  Widget Build(BuildContext context){
    return ListTile(
      leading: Image.network(item.Image),
    );
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//