import 'package:flutter/material.dart';
class individualdetails extends StatefulWidget {
   String? asset,index;
   individualdetails({ Key? key , @required this.asset, @required this.index }) : super(key: key);

  @override
  _individualdetailsState createState() => _individualdetailsState();
}

class _individualdetailsState extends State<individualdetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.purple,
      child: Column(
        children: [
          Hero(
            tag: widget.index.toString(),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(widget.asset.toString(),fit: BoxFit.fill,),),
          ),
            SizedBox(height: 20,),
            Center(child: Text(widget.index.toString(),style: TextStyle(fontSize: 50,color:Colors.red),))

        ],
      ),

    );
  }
}