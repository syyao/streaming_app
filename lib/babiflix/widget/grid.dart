import 'package:flutter/material.dart';

class GridFilM extends StatelessWidget {


 
      
     @override
     Widget build(BuildContext context) {
       return     Padding(
         padding: const EdgeInsets.all(20),
         child: Center(
           child: Column(
             children: [
               new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
                // Expanded(
                //   child: Container(
                //     child: GridView.builder(
                //       itemCount: 10,
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                // crossAxisCount: 2,
                // childAspectRatio: 1/2,
                // crossAxisSpacing: 15,
                // mainAxisSpacing: 15,
                // ), 
                //       itemBuilder: (context, index){
                //          return Container(
                //            color: Colors.red,
                           
                           
                //          );
                //       }),
                //   ),
      
            //    ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 150,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/film1.jpg"), fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
              SizedBox(height: 10,),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  height: 200,
                  width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/film4.jpg"), fit: BoxFit.cover)
                  ),
            ),
               ),
             )
      ],
      
    ),
       Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
           
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/serie3.jpg"), fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
              SizedBox(height: 10,),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  height: 200,
                  width: 150,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/serie2.jpg"), fit: BoxFit.cover)
                  ),
            ),
               ),
             )
      ],
      
    ),
         new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
           
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/serie1.jpg"), fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
              SizedBox(height: 10,),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  height: 200,
                  width: 150,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/film3.jpg"), fit: BoxFit.cover)
                  ),
            ),
               ),
             )
      ],
      
    ),
             ],
           ),
         ),
       );
     }
   }
 