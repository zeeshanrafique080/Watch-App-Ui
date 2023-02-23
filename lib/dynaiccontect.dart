import 'package:flutter/material.dart';
class dynamiccontent extends StatefulWidget {
  const dynamiccontent({ Key? key }) : super(key: key);

  @override
  _dynamiccontentState createState() => _dynamiccontentState();
}

class _dynamiccontentState extends State<dynamiccontent> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 7,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder:(context, index) {
         
         return Container(
           child: Column(
             children: [
               Container(
                 height: 50,
                 width: 50,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage("s${index + 1}"),fit: BoxFit.fill
                   )
                 ),
               )
             ],
           ),
         );
       }, 
       );
  }
}