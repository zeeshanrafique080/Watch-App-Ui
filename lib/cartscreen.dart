// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:zeewatch/homescreen.dart';

class cartpages extends StatefulWidget {
  const cartpages({ Key? key }) : super(key: key);

  @override
  _cartpagesState createState() => _cartpagesState();
}

class _cartpagesState extends State<cartpages> {

  List info=[
    {'image':"assets/images/s1.jpg" ,'title':"Apple watch", 'price':"Rs:35000", 'color':Colors.red,},
    {'image':"assets/images/s3.jpg",'title':"Apple watch", 'price':"Rs:35000",'color':Colors.green,},
     {'image':"assets/images/s2.jpg",'title':"Apple watch", 'price':"Rs:35000",'color':Colors.blue,},
      {'image':"assets/images/s5.jpg",'title':"Apple watch", 'price':"Rs:35000",'color':Colors.purple,},
       {'image':"assets/images/s7.jpg",'title':"Apple watch", 'price':"Rs:35000",'color':Colors.orange,},
        {'image':"assets/images/s1.jpg",'title':"Apple watch", 'price':"Rs:35000",'color':Colors.green,},
    
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        title: Text("Cart List"),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>watchapp()));
        }, icon: Icon(Icons.backpack_sharp)),
      actions: [
       IconButton(onPressed: (){}, icon: Icon(Icons.search)) ,
        IconButton(onPressed: (){}, icon: Icon(Icons.person),),
      ],
      ),

      body: Container(
        child: ListView.builder (
          itemCount: info.length, 
          itemBuilder:
         (context, index){
          
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children:[ 
                    Container(
                    height: 100,
                    width: 100,
                    child: Card(
                      color: info[index]['color'],
                    ),
                  
                  
                   ),
                  Positioned(
                    
                    left: 2,
                    
                    child: Image.asset(info[index]['image'],
                    height: 100,
                    width: 100,)),
                  ],
                  
                  ),
               
               //sizebox
                SizedBox(
                  width: 20,
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      
                     
                        Text(info[index]["title"]),
                        Text(info[index]['price']),
                       SizedBox(
                         height: 10,
                       ),

                        Row(
                          children: [
                            CircleAvatar(
                             child: IconButton(onPressed: (){},
                              icon: Icon(Icons.add),),
                             
                            ),
                             
                             
                             SizedBox(
                               width: 5,
                             ),
                            //
                               CircleAvatar(
                             child: IconButton(onPressed: (){},
                              icon: Icon(Icons.remove),),
                             
                            ),
                            

                           
                          ],
                        )
                     
                     ] ),
                ),
            
              ],
            ),
          );
        }),
      ),
      
      //bottom sheet

      bottomSheet: Container(
        
        height: 50,
        
        decoration: BoxDecoration(
          color: Colors.blue,
        ),

        child: Row(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Total price"),
                  Text("1,35,000"),
                ],
              ),
            ),


            SizedBox(
              width: 320,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Buy Now"),
               ),
              onPressed: (){})
          ],
        ),
      ),
    );
  }
}