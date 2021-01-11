import 'package:flutter/material.dart';

class Abonement1 extends StatefulWidget {
  @override
  _Abonement1State createState() => _Abonement1State();
}

class _Abonement1State extends State<Abonement1> {
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

      body: Container(
        child: ListView(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Center(child: Text("1",
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
                                child: Text('Choisir ton plan, ',
                                style: TextStyle(
                                  color: Colors.white,
                                   fontSize: 18
                                ),
                                ),
                              ),
                       ),
                  ],
                ),
              SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                           width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        
                            SizedBox(height: 7,),
                              Container(
                                
                              child: Text("FREE",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold 
                              ),
                              ),
                            ),
                             SizedBox(height: 7,),
                               Container(
                                
                                // width: MediaQuery.of(context).size.width/2,
                              child: Text('Le lorem ipsum est, en imprimerie, Le lorem ipsum est, en imprimerie, Le lorem ipsum est, en imprimerie, ',
                              style: TextStyle(
                                color: Colors.grey,
                                
                              ),
                              ),
                            ),
                             SizedBox(height: 20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Container(
                                   height: 40,
                                   width: 100,
                                  child: Center(
                                    child: Text("Choisir",
                                    style: TextStyle(
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                            ),
                               ],
                             ),
                          ],
                        ),
                      ),
                    ),
                ),
                 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                           width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        
                            SizedBox(height: 7,),
                              Container(
                                
                              child: Text("COMMENCER",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold 
                              ),
                              ),
                            ),
                             SizedBox(height: 7,),
                               Container(
                                
                                // width: MediaQuery.of(context).size.width/2,
                              child: Text('Le lorem ipsum est, en imprimerie, Le lorem ipsum est, en imprimerie, Le lorem ipsum est, en imprimerie, ',
                              style: TextStyle(
                                color: Colors.grey,
                                
                              ),
                              ),
                            ),
                             SizedBox(height: 20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Container(
                                   height: 40,
                                   width: 100,
                                  child: Center(
                                    child: Text("Choisir",
                                    style: TextStyle(
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                            ),
                               ],
                             ),
                          ],
                        ),
                      ),
                    ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                           width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        
                            SizedBox(height: 7,),
                              Container(
                                
                              child: Text("PREMIUM",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold 
                              ),
                              ),
                            ),
                             SizedBox(height: 7,),
                               Container(
                                
                                // width: MediaQuery.of(context).size.width/2,
                              child: Text('Le lorem ipsum est, en imprimerie, Le lorem ipsum est, en imprimerie, Le lorem ipsum est, en imprimerie, ',
                              style: TextStyle(
                                color: Colors.grey,
                                
                              ),
                              ),
                            ),
                             SizedBox(height: 20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Container(
                                   height: 40,
                                   width: 100,
                                  child: Center(
                                    child: Text("Choisir",
                                    style: TextStyle(
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                            ),
                               ],
                             ),
                          ],
                        ),
                      ),
                    ),
                ),
              
             InkWell(
               onTap: (){
                 Navigator.of(context).pushNamed("InformationAbone");
               },
               child: Padding(
                 padding: const EdgeInsets.all(15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
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