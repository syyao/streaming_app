

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Drawers extends StatefulWidget {
  Drawers({Key key}):super(key:key);
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  

 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipPath(
        child: Container(
         width: 240,       
         child: Stack(
           children: [
             BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
             child:   Container(
               decoration: BoxDecoration(
                 color: Colors.black.withOpacity(0.5)
               ),
             ),
             ),
             SingleChildScrollView(
               child: Column(
                 children: [
                   SizedBox(height: 10,),
                   InkWell(
                     onTap: (){
                       Navigator.of(context).pushNamed("profil");
                     },
                                        child: Center(
                       child: Container(           
                         height: 60,
                         width: 60,                  
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape:BoxShape.circle
                          ),
                       ),
                     ),
                   ),
                        Center(
                     child: Container(                            
                       child: Text(
                         "User",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 20,
                           fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                   ),
                          Center(
                     child: Container(                            
                       child: Text(
                         "lepnkouakou@gmail.com",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 15,
                           fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Divider(
                     color: Colors.white,
                     endIndent: 80,
                     indent: 80,
                   ),
                    SizedBox(
                     height: 5,
                   ),
                         Center(
                     child: Container(                            
                       child: Text(
                         "Nan.ci",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 15,
                           fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 5,
                   ),
                   ListTile(
                     title: Text("Mes Favoris",
                     style: TextStyle(
                       color: Colors.white,
                        fontSize: 12,
                     ),
                     ),
                     leading: IconButton(
                       icon: FaIcon(FontAwesomeIcons.star, color: Colors.red,

                    size: 20,
                       ),
                       onPressed: (){},
                       ),
                   ),
                      ListTile(
                     title: Text("Mes telechargement",
                     style: TextStyle(
                       color: Colors.white,
                      fontSize: 12,
                     ),
                     ),
                    leading: IconButton(
                       icon: FaIcon(FontAwesomeIcons.download, color: Colors.red,
                       size: 20,
                      
                       ),
                       onPressed: (){},
                       ),
                    
                   ),

                      ListTile(
                     title: Container(
                       child: Row(
                         children: [
                           Text("Abonnement",
                           style: TextStyle(
                             color: Colors.white,
                              fontSize: 12,
                           ),
                           ),
                            
                         ],
                       ),
                     ),
                     leading: IconButton(
                       icon: FaIcon(
                         FontAwesomeIcons.moneyBill,
                         color: Colors.red,
                         size: 20,
                       ),
                       onPressed: (){},
                       ),
                   ),
                       ListTile(
                     title: Text("Paramettre",
                     style: TextStyle(
                       color: Colors.white,
                        fontSize: 12,
                     ),
                     ),
                     leading: IconButton(
                       icon: Icon(Icons.settings, size: 20, color: Colors.red,), onPressed: (){}),
                   ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed("radio");
                          },
                          child: ListTile(
                     title: Text("Radio",
                     style: TextStyle(
                       color: Colors.white,
                          fontSize: 12,
                     ),
                     ),
                     leading: IconButton(
                       icon: Icon(Icons.radio ,size: 20, color: Colors.red,), onPressed: (){}),
                   ),
                        ),
                            InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed("teve");
                          },
                          child: ListTile(
                     title: Text("TV",
                     style: TextStyle(
                       color: Colors.white,
                          fontSize: 12,
                     ),
                     ),
                     leading: IconButton(
                       icon: Icon(Icons.tv, size: 20, color: Colors.red,), onPressed: (){
                          Navigator.of(context).pushNamed("teve");
                       }),
                   ),
                        ),
                         ListTile(
                     title: Text("Partager un amis",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 12,
                     ),
                     ),
                     leading: IconButton(icon: Icon(Icons.person_add, size: 20, color: Colors.red,), onPressed: (){}),
                   ),
                       ListTile(
                     title: Text("Deconexion",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 12,
                     ),
                     ),
                     leading: IconButton(icon: Icon(Icons.power_settings_new, size: 20, color: Colors.red,), onPressed: (){}),
                   ),
                      ListTile(
                     title: Text("A propos",
                     style: TextStyle(
                       color: Colors.white,
                        fontSize: 12,
                     ),
                     ),
                     leading: IconButton(icon: Icon(Icons.inbox, size: 20, color: Colors.red,), onPressed: (){}),
                   ),
                 ],
               ),
             )
           
           ],
         ),
        ),
      ),
    );
  }
}