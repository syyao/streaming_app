import 'package:flutter/material.dart';


class InformationAbone extends StatefulWidget {
  @override
  _InformationAboneState createState() => _InformationAboneState();
}

class _InformationAboneState extends State<InformationAbone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Abonnement",
        style: TextStyle(
          color: Colors.red
        ),
        ),
      ),
       body: SingleChildScrollView(
         child: Column(
           children: [
                  Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(child: Text("2",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),
                              )),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                               
                                color: Colors.red,
                              ),
                            ),
                          ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(
                                      child: Text('Information, ',
                                      style: TextStyle(
                                        color: Colors.white,
                                         fontSize: 18
                                      ),
                                      ),
                                    ),
                             ),
                        ],
                      ),
             Container(
               height: MediaQuery.of(context).size.height/4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                    children: [

                 
                    SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            
                            width: MediaQuery.of(context).size.width/1.6,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                 width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                             // image: DecorationImage(image: AssetImage("images/radio4.jpg"), fit: BoxFit.cover)
                            ),
                           child: Column(
                            
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  
                                   height: 50,
                                   width: 100,
                                   decoration: BoxDecoration(
                                       image: DecorationImage(image: AssetImage("images/uba.jpg"), fit: BoxFit.cover)
                                   ),
                                 ),
                               ),
                                    Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  
                                   
                                   width: 100,
                                  child: Text("Payer avec ma carte VISA",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                  ),
                                 ),
                               )
                             ],
                           ),
                          ),
                      ),
                       
                   SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            
                            width: MediaQuery.of(context).size.width/1.6,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                 width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                             // image: DecorationImage(image: AssetImage("images/radio4.jpg"), fit: BoxFit.cover)
                            ),
                           child: Column(
                            
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  
                                   height: 50,
                                   width: 100,
                                   decoration: BoxDecoration(
                                       image: DecorationImage(image: AssetImage("images/logo-orange.jpg"), fit: BoxFit.cover)
                                   ),
                                 ),
                               ),
                                    Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  
                                   
                                   width: 100,
                                  child: Text("Payer avec mon numero Orange",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                  ),
                                 ),
                               )
                             ],
                           ),
                          ),
                      ),
                       SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            
                            width: MediaQuery.of(context).size.width/1.6,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                 width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                             // image: DecorationImage(image: AssetImage("images/radio4.jpg"), fit: BoxFit.cover)
                            ),
                           child: Column(
                            
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  
                                   height: 50,
                                   width: 100,
                                   decoration: BoxDecoration(
                                       image: DecorationImage(image: AssetImage("images/Logotype_Moov.png"), fit: BoxFit.cover)
                                   ),
                                 ),
                               ),
                                    Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  
                                   
                                   width: 100,
                                  child: Text("Payer avec mon numero moov",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                  ),
                                 ),
                               )
                             ],
                           ),
                          ),
                      ),
                       SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            
                            width: MediaQuery.of(context).size.width/1.6,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                 width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                             // image: DecorationImage(image: AssetImage("images/radio4.jpg"), fit: BoxFit.cover)
                            ),
                           child: Column(
                            
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  
                                   height: 50,
                                   width: 100,
                                   decoration: BoxDecoration(
                                       image: DecorationImage(image: AssetImage("images/logo_mtn.jpg"), fit: BoxFit.cover)
                                   ),
                                 ),
                               ),
                                    Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  
                                   
                                   width: 100,
                                  child: Text("Payer avec mon numero MTN",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                  ),
                                 ),
                               )
                             ],
                           ),
                          ),
                      ),
             
                    ],
              ),
      ),

      Form(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Nom",
              style: TextStyle(
                color: Colors.grey
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               
               decoration: BoxDecoration(
                 color:Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nath"
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              child: Text("Numero de cart",
              style: TextStyle(
                color: Colors.grey
              ),
              ),
          ),
           ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
                 
            child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nath"
                ),
            ),
          ),
             ),
             
                  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Expiration de date",
              style: TextStyle(
                color: Colors.grey
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                  width: MediaQuery.of(context).size.width/2,
               decoration: BoxDecoration(
                 color:Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "MM/YY"
                ),
              ),
            ),
          ),
                   Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("CVV",
              style: TextStyle(
                color: Colors.grey
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width/2,
               decoration: BoxDecoration(
                 color:Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "XXX"
                ),
              ),
            ),
          ),
                   Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Zip",
              style: TextStyle(
                color: Colors.grey
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               width: MediaQuery.of(context).size.width/2,
               decoration: BoxDecoration(
                 color:Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "00000"
                ),
              ),
            ),
          ),
        ],
        ),
      ),
                     InkWell(
                       onTap: (){
                         Navigator.of(context).pushNamed("BienvenuAbon");
                       },
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                                 Row(
                                   children: [
                                     Container(
                               
                               
                                     child: Text("PREMIUM:",
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 18
                                       
                                     ),
                                     ),
                               ),
                                      Container(
                               
                               
                                     child: Text("13000/",
                                     style: TextStyle(
                                       color: Colors.red,
                                       fontSize: 18
                                       
                                     ),
                                     ),
                               ),
                                   Container(
                               
                               
                                     child: Text("mois",
                                     style: TextStyle(
                                       color: Colors.grey,
                                       fontSize: 12
                                       
                                     ),
                                     ),
                               )
                                   ],
                                 ),
                              
                             
                             Container(
                               height: 40,
                               width: 100,
                               child: Center(
                                 child: Text("Suivant",
                                 style: TextStyle(
                                   color: Colors.white,
                                   
                                 ),
                                 ),
                               ),
                               decoration: BoxDecoration(
                                 color: Colors.red,
                                 borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ],
                         ),
                       ),
                     )
           ],
         ),
       ),
    );
  }
}