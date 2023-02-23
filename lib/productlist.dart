import 'package:flutter/material.dart';


class products extends StatefulWidget {
  const products({ Key? key }) : super(key: key);

  @override
  _productsState createState() => _productsState();
}

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: [
          IconButton(onPressed: (){
           
          },
           icon: Icon(Icons.shopping_bag)),
        ],
      ),

      body: Container(

        color: Colors.white,
        
        child: Column(
          children: [
            Center(child: Image.asset("assets/images/s5.jpg")),
            Container(
              width: 500,
              height: 300,
             
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.green,
                
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("This is practice app session This is practice app session /nThis is practice app session"),
                  ),
                ],
              ),
            ),
          ],
          
         ),
        ),
      
      
      
    );
  }
}