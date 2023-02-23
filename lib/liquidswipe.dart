import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:zeewatch/individualdetails.dart';
class liquid extends StatefulWidget {
  const liquid({ Key? key }) : super(key: key);

  @override
  _liquidState createState() => _liquidState();
}

class _liquidState extends State<liquid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        waveType: WaveType.liquidReveal,
        pages: [
        Container(
         // padding: const EdgeInsets.all(25),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(height: 100,),
            const  Text("Descover",style: TextStyle(fontSize: 25),),
            const SizedBox(height: 100,),
             CarouselSlider.builder(

               itemCount: 7,
               itemBuilder: (context, index, realIndex) {
                 return GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => individualdetails(asset: "assets/images/s${index +1}.jpg", index: index.toString()),));
                   },
                   child: Hero(
                     tag: index.toString(),
                     child: Container(
                      width: MediaQuery.of(context).size.width/2,
                       decoration:  BoxDecoration(
                         image: DecorationImage(image: AssetImage("assets/images/s${index +1}.jpg"),fit: BoxFit.fill),

                         
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Text("$index",style: TextStyle(fontSize: 50,color:Colors.red),)
                                    
                         ],
                       ),
                     ),
                   ),
                 );
               },
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  enlargeCenterPage: true
                )),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: Center(
            child: Container(
              height: 145,
              width: 70,
              child: FittedBox(
                child: Text("this is text"),
              ),
            ),
          ),
        ),
        Container(height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,),
      ]),
    );
  }
}