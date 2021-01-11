import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Chaine extends StatefulWidget {
  @override
  _ChaineState createState() => _ChaineState();
}

class _ChaineState extends State<Chaine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0Xff191919),
       body: Container(
         height: MediaQuery.of(context).size.height,
         child: SafeArea(
           child: Stack(
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){
                            Navigator.of(context).pop();
                         }),
                       ),
                     ),
                    Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: 
                                  Container(
                                    height: 50,
                                    width: 100,
                                 decoration: BoxDecoration(
                                   image: DecorationImage(image: AssetImage("images/bbf.png"))
                                 ),
                              ),
                              
                              
                            ),
                       Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         child: IconButton(icon: Icon(Icons.more_horiz, color: Colors.white,), onPressed: (){}),
                       ),
                     ),
                   ],
                 ),
                 Container(
                   alignment: Alignment.center,
                   height: 150,
                   width: 300,
                  
                   decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage("images/radio4.jpg"))
                   ),
                 ),
                   Container(
                        child: Text("My song",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                  Container(
                        child: Text("Radio Djam",
                        style: TextStyle(
                          color: Colors.white,
                          
                        ),
                        ),
                      ),
                         Container(
                        child: Text("Radio Djam 93.1 - Top20",
                        style: TextStyle(
                          color: Colors.grey,    
                        ),
                        ),
                      ),
               SpinKitWave(
        itemBuilder: (_, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.red : Colors.white,
            ),
          );
        },
        size: 120.0,
      ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
                 Container(
                   child: IconButton(icon: Icon(Icons.volume_down, color: Colors.white,), onPressed: null),
                 ),
               Slider(
                  min: 0,
                  max: 30,
                  inactiveColor: Colors.red,
                  activeColor: Colors.white,
                  value: 10,
                   onChanged: (double b){
                
                }),
                     Container(
                        child: Text("0:00 / 0:00",
                        style: TextStyle(
                          color: Colors.white,    
                        ),
                        ),
                      ),
             ],
           ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Container(
                   alignment: Alignment.center,
                      height: 60,
                   width: 60,
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(59, 59, 60, 1),
                     borderRadius: BorderRadius.circular(100)
                   ),
                   child: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white,), onPressed: (){})
                 ),
                           Container(
                   
                      height: 60,
                   width: 60,
                    decoration: BoxDecoration(
                       color: Color.fromRGBO(59, 59, 60, 1),
                     borderRadius: BorderRadius.circular(100)
                  ),
                   child: Center(child: IconButton(icon: Icon(Icons.play_arrow, color: Colors.white,), onPressed: (){}))
                 ),
                           Container(
                   alignment: Alignment.center,
                   height: 60,
                   width: 60,
                    decoration: BoxDecoration(
                     color: Color.fromRGBO(59, 59, 60, 1),
                     borderRadius: BorderRadius.circular(100)
                   ),
                   child: IconButton(icon: Icon(Icons.arrow_forward_ios, color: Colors.white,), onPressed: (){})
                 ),
                        ],
                      )
               ],
         ),
             ],
           )),
       ),
    );
  }
}