// import 'package:baby_flix/babiflix/widget/drawer.dart';
// import 'package:baby_flix/babiflix/widget/teveItem.dart';
// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';


// class Listefilms extends StatefulWidget {
//   @override
//   _ListefilmsState createState() => _ListefilmsState();
// }

// class _ListefilmsState extends State<Listefilms>with SingleTickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       backgroundColor: Colors.black12,   
//     endDrawer: Drawers(), 
//       body: MainBody(),
 
//     );
   
//   }
// }
// class MainBody extends StatefulWidget {
//   @override
//   _MainBodyState createState() => _MainBodyState();
// }

// class _MainBodyState extends State<MainBody> {
 
//     static const menuItems = <String>[
//     "Harry Poter",
//     'Super Girl',
//     'Deepool',
//     'GangStar',
//     'Maya',
//     'Labra',
//     "Chasse a L'homme",
//   ];
//     final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
//       .map((String value) => DropdownMenuItem<String>(
//             value: value,
//             child: Text(
//               value,
//               style: TextStyle(color: Colors.white),
//             ),
//           ))
//       .toList();
//   String _btnSelectedVAl = "";
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
      
//       backgroundColor: Colors.black,
//           body: Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                Container(
//                  child: Column(
//                    children: [
//                      SizedBox(height: 10,),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          IconButton(icon: Icon(Icons.arrow_back), color: Colors.white, onPressed: (){
//                            Navigator.of(context).pushNamed("Accueil1");
//                          }),
//                               Padding(
//                                 padding: const EdgeInsets.all(25),
//                                 child: 
//                                     Container(
//                                       height: 40,
//                                       width: 100,
//                                    decoration: BoxDecoration(
//                                      image: DecorationImage(image: AssetImage("images/bbf.png"))
//                                    ),
//                                 ),
                                
                                
//                               ),
//                          Padding(
//                            padding: const EdgeInsets.only(right: 10),
//                            child: IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: (){
//                             Scaffold.of(context).openEndDrawer();
                           
//                            }
//                            ),
//                          ),
//                        ],
//                      ),
//                       InkWell(
                        
//                         child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
                          
//                           height: MediaQuery.of(context).size.height/11,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                              border: Border.all(
//                                   color: Color.fromRGBO(59, 59, 60, 1),
//                                   width: 2
//                                 )
//                           ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Container(
//                                                 child: Text("Recherche:",
//                                                 style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.bold
//                                                 ),
//                                                 ),
//                                               ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: DropdownButton(
//                                       icon: Icon(Icons.search, color:Colors.white),  
//                                       underline: SizedBox(),
//                                     items: this._dropDownMenuItems,
//                                     dropdownColor: Colors.black,
//                                     hint: Text(
//                                       _btnSelectedVAl,
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                     onChanged: (String newValue) {
//                                       setState(() {
//                                         _btnSelectedVAl = newValue;
//                                       });
//                                     }
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                     ),
//                       ),
//                 //       Container(
                              
//                 //               child: Padding(
//                 //                 padding: const EdgeInsets.all(8.0),
//                 //                 child: Container(
//                 //                   height: 40,
//                 //                   width: MediaQuery.of(context).size.width/1.3,
//                 //                   decoration: BoxDecoration(
//                 //                     borderRadius: BorderRadius.circular(10),
//                 //                     color: Color.fromRGBO(59, 59, 60, 1)
//                 //                   ),
//                 //   child: TextField(
                    
//                 //       cursorColor: Colors.white,
//                 //       style: TextStyle(
//                 //         color: Colors.white
//                 //       ),
//                 //     decoration: InputDecoration(
                      
//                 //       border: InputBorder.none,
//                 //       prefixIcon: IconButton(
//                 //       icon: Icon(
//                 //         Icons.search,
//                 //         color: Colors.white,
//                 //       ),
//                 //       onPressed: () {
//                 //         Navigator.of(context).pushNamed("suggession");
//                 //       }),
//                 //       hintText: "Recherche de Film, Tv, Videos",
//                 //       hintStyle: TextStyle(
//                 //         color: Colors.grey,

//                 //       ),
//                 //       //labelText: "Recherche de Film, Tv, Videos",
//                 //       // labelStyle: TextStyle(
//                 //       //   color: Colors.grey,

//                 //       // )
//                 //     ),
//                 //   )
//                 // ),
//                 //               ),
//                 //             ),
//                    ],
//                  ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(15),
//                  child: Container(
//                    child: Text("Tout mes Films",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 18,
//                      fontWeight: FontWeight.bold
//                    ),
//                    ),
                   
//                  ),
//                ),
               
                   
//                 Expanded(
//                     child: Container(
//                     child: ListView(      
//                        children: [

//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                  children: [
                                   
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
                                     
//                                      height: MediaQuery.of(context).size.height/2.6,
//                                      width: MediaQuery.of(context).size.width/2.3,
       
//                                      child:Column(
//                                        children: [
//                                          Expanded(
//                                        flex: 3,
//                                        child: Container(
//                                            decoration: BoxDecoration(
//                                        color: Colors.red,
//                                       image:DecorationImage(image: AssetImage("images/serie4.jpg"), fit: BoxFit.cover),
//                                          borderRadius: BorderRadius.only(
//                                              topLeft: Radius.circular(10),
//                                              topRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      ),
//                                          ),
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                            width: MediaQuery.of(context).size.width,
//                                                    decoration: BoxDecoration(
                                                      
//                                        color: Color.fromRGBO(59, 59, 60, 1),
//                                          borderRadius: BorderRadius.only(
//                                              bottomLeft: Radius.circular(10),
//                                              bottomRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("Breaking Bad",
//                                        style: TextStyle(
//                                          color: Colors.white,
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 18
//                                        ),
//                                        ),
//                                      ),
//                                          )
//                                          )
//                                        ],
//                                      )
                                    
//                                      ),
//                                       ),   
                                      
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
                                     
//                                       height: MediaQuery.of(context).size.height/2.6,
//                                      width: MediaQuery.of(context).size.width/2.3,
//                                      child:Column(
//                                        children: [
//                                          Expanded(
//                                        flex: 3,
//                                        child: Container(
//                                            decoration: BoxDecoration(
//                                        color: Colors.red,
//                                       image:DecorationImage(image: AssetImage("images/serie3.jpg"), fit: BoxFit.cover),
//                                          borderRadius: BorderRadius.only(
//                                              topLeft: Radius.circular(10),
//                                              topRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      ),
//                                          ),
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                            width: MediaQuery.of(context).size.width,
//                                                    decoration: BoxDecoration(
                                                      
//                                        color: Color.fromRGBO(59, 59, 60, 1),
//                                          borderRadius: BorderRadius.only(
//                                              bottomLeft: Radius.circular(10),
//                                              bottomRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("SuperGirl",
//                                        style: TextStyle(
//                                          color: Colors.white,
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 18
//                                        ),
//                                        ),
//                                      ),
//                                          )
//                                          )
//                                        ],
//                                      )
                                    
//                                      ),
//                                       ),
                                              
                                   
                                    
//                                  ],
//                                ),
//                                       Row(
//                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                  children: [
                                   
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
                                     
//                                      height: MediaQuery.of(context).size.height/2.6,
//                                      width: MediaQuery.of(context).size.width/2.3,
       
//                                      child:Column(
//                                        children: [
//                                          Expanded(
//                                        flex: 3,
//                                        child: Container(
//                                            decoration: BoxDecoration(
//                                        color: Colors.red,
//                                       image:DecorationImage(image: AssetImage("images/serie4.jpg"), fit: BoxFit.cover),
//                                          borderRadius: BorderRadius.only(
//                                              topLeft: Radius.circular(10),
//                                              topRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      ),
//                                          ),
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                            width: MediaQuery.of(context).size.width,
//                                                    decoration: BoxDecoration(
                                                      
//                                        color: Color.fromRGBO(59, 59, 60, 1),
//                                          borderRadius: BorderRadius.only(
//                                              bottomLeft: Radius.circular(10),
//                                              bottomRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("Breaking Bad",
//                                        style: TextStyle(
//                                          color: Colors.white,
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 18
//                                        ),
//                                        ),
//                                      ),
//                                          )
//                                          )
//                                        ],
//                                      )
                                    
//                                      ),
//                                       ),   
                                      
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
                                     
//                                       height: MediaQuery.of(context).size.height/2.6,
//                                      width: MediaQuery.of(context).size.width/2.3,
//                                      child:Column(
//                                        children: [
//                                          Expanded(
//                                        flex: 3,
//                                        child: Container(
//                                            decoration: BoxDecoration(
//                                        color: Colors.red,
//                                       image:DecorationImage(image: AssetImage("images/film1.jpg"), fit: BoxFit.cover),
//                                          borderRadius: BorderRadius.only(
//                                              topLeft: Radius.circular(10),
//                                              topRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      ),
//                                          ),
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                            width: MediaQuery.of(context).size.width,
//                                                    decoration: BoxDecoration(
                                                      
//                                        color: Color.fromRGBO(59, 59, 60, 1),
//                                          borderRadius: BorderRadius.only(
//                                              bottomLeft: Radius.circular(10),
//                                              bottomRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("The Expendables",
//                                        style: TextStyle(
//                                          color: Colors.white,
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 18
//                                        ),
//                                        ),
//                                      ),
//                                          )
//                                          )
//                                        ],
//                                      )
                                    
//                                      ),
//                                       ),
                                              
                                   
                                    
//                                  ],
//                                ),

//                                 Row(
//                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                  children: [
                                   
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
                                     
//                                      height: MediaQuery.of(context).size.height/2.6,
//                                      width: MediaQuery.of(context).size.width/2.3,
       
//                                      child:Column(
//                                        children: [
//                                          Expanded(
//                                        flex: 3,
//                                        child: Container(
//                                            decoration: BoxDecoration(
//                                        color: Colors.red,
//                                       image:DecorationImage(image: AssetImage("images/film2.jpg"), fit: BoxFit.cover),
//                                          borderRadius: BorderRadius.only(
//                                              topLeft: Radius.circular(10),
//                                              topRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      ),
//                                          ),
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                            width: MediaQuery.of(context).size.width,
//                                                    decoration: BoxDecoration(
                                                      
//                                        color: Color.fromRGBO(59, 59, 60, 1),
//                                          borderRadius: BorderRadius.only(
//                                              bottomLeft: Radius.circular(10),
//                                              bottomRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("Harry Poter",
//                                        style: TextStyle(
//                                          color: Colors.white,
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 18
//                                        ),
//                                        ),
//                                      ),
//                                          )
//                                          )
//                                        ],
//                                      )
                                    
//                                      ),
//                                       ),
                                         
                                      
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
                                     
//                                       height: MediaQuery.of(context).size.height/2.6,
//                                      width: MediaQuery.of(context).size.width/2.3,
//                                      child:Column(
//                                        children: [
//                                          Expanded(
//                                        flex: 3,
//                                        child: Container(
//                                            decoration: BoxDecoration(
//                                        color: Colors.red,
//                                       image:DecorationImage(image: AssetImage("images/fli.jpg"), fit: BoxFit.cover),
//                                          borderRadius: BorderRadius.only(
//                                              topLeft: Radius.circular(10),
//                                              topRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      ),
//                                          ),
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                            width: MediaQuery.of(context).size.width,
//                                                    decoration: BoxDecoration(
                                                      
//                                        color: Color.fromRGBO(59, 59, 60, 1),
//                                          borderRadius: BorderRadius.only(
//                                              bottomLeft: Radius.circular(10),
//                                              bottomRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("SuperGirl",
//                                        style: TextStyle(
//                                          color: Colors.white,
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 18
//                                        ),
//                                        ),
//                                      ),
//                                          )
//                                          )
//                                        ],
//                                      )
                                    
//                                      ),
//                                       ),
                                          
                                   
                                    
//                                  ],
//                                ),
//                                    Row(
//                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                  children: [
                                   
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
                                     
//                                      height: MediaQuery.of(context).size.height/2.6,
//                                      width: MediaQuery.of(context).size.width/2.3,
       
//                                      child:Column(
//                                        children: [
//                                          Expanded(
//                                        flex: 3,
//                                        child: Container(
//                                            decoration: BoxDecoration(
//                                        color: Colors.red,
//                                       image:DecorationImage(image: AssetImage("images/serie1.jpg"), fit: BoxFit.cover),
//                                          borderRadius: BorderRadius.only(
//                                              topLeft: Radius.circular(10),
//                                              topRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      ),
//                                          ),
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                            width: MediaQuery.of(context).size.width,
//                                                    decoration: BoxDecoration(
                                                      
//                                        color: Color.fromRGBO(59, 59, 60, 1),
//                                          borderRadius: BorderRadius.only(
//                                              bottomLeft: Radius.circular(10),
//                                              bottomRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("Deepool",
//                                        style: TextStyle(
//                                          color: Colors.white,
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 18
//                                        ),
//                                        ),
//                                      ),
//                                          )
//                                          )
//                                        ],
//                                      )
                                    
//                                      ),
//                                       ),
                                         
                                      
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
                                     
//                                       height: MediaQuery.of(context).size.height/2.6,
//                                      width: MediaQuery.of(context).size.width/2.3,
//                                      child:Column(
//                                        children: [
//                                          Expanded(
//                                        flex: 3,
//                                        child: Container(
//                                            decoration: BoxDecoration(
//                                        color: Colors.red,
//                                       image:DecorationImage(image: AssetImage("images/spid.jpg"), fit: BoxFit.cover),
//                                          borderRadius: BorderRadius.only(
//                                              topLeft: Radius.circular(10),
//                                              topRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      ),
//                                          ),
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                            width: MediaQuery.of(context).size.width,
//                                                    decoration: BoxDecoration(
                                                      
//                                        color: Color.fromRGBO(59, 59, 60, 1),
//                                          borderRadius: BorderRadius.only(
//                                              bottomLeft: Radius.circular(10),
//                                              bottomRight: Radius.circular(10),
//                                            ),
                                           
//                                      ),
//                                      child: Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("SpiderMan",
//                                        style: TextStyle(
//                                          color: Colors.white,
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 18
//                                        ),
//                                        ),
//                                      ),
//                                          )
//                                          )
//                                        ],
//                                      )
                                    
//                                      ),
//                                       ),
                                          
                                   
                                    
//                                  ],
//                                ),

                             


                               
                               
                             
                              
                   
                  
                     
                                 
                     
                                         
                               
                        
                          
                                
                  
                    
                     
                      
                     
                                
                              
//                                  Container(
//                                    width: MediaQuery.of(context).size.width,
//                                   // color: Color.fromRGBO(59, 59, 60, 1),
//                                    child: Column(
//                                      children: [
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                       children: [
                                   
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(   

//                             width: MediaQuery.of(context).size.width/2,
//                           child: Column(
//                             children: [
//                               Container(
//                               height: 70,
//                               width: 100,
//                                child: Icon(Icons.tv, color: Colors.red, size: 70,)),
                                        
                                    
//                                         SizedBox(height: 25,),
//                       Container(
//                         height: 20,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(image: AssetImage("images/bbf.png"))
//                         ),
                        
                                       
                                        
//                                         ),
                                    
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                                       ],
//                                     ),
                             
//                                  SizedBox(
//                                    height: 20,
//                                  ),
                                  
                              
                                
//                                      ],
//                                    ),
//                                  ),
                               
//                               ],
//                             )
//         ),
//                 ),
                
//               ],
//             ),
//           ),
    
//     );
    
//   }
  
// }


import "package:flutter/material.dart";

class Listefilms extends StatefulWidget {
  @override
  _ListefilmsState createState() => _ListefilmsState();
}

class _ListefilmsState extends State<Listefilms> {
  bool search = false;
  void dynamicSearch() {
    setState(() {
      search = !search;
    });
  }
    static const menuItems = <String>[
    "Harry Poter",
    'Super Girl',
    'Deepool',
    'GangStar',
    'Maya',
    'Labra',
    "Chasse a L'homme",
  ];
    final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map((String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.white),
            ),
          ))
      .toList();
  String _btnSelectedVAl = "Chasse a L'homme";

  Widget defaultAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Container(
          width: MediaQuery.of(context).size.width / 5,
          child: Image(
            image: AssetImage('images/bbf.png'),
          )),
      //  Text(
      //   'BABIFLIX',
      //   style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      // ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () => dynamicSearch())
      ],
    );
  }

  Widget searchAppBar() {
    
    return AppBar(
      backgroundColor: Color(0xff191919),
      title: TextField(
        style: TextStyle(color: Colors.black),
        autofocus: true,
        decoration: InputDecoration(
            hintText: "Rechercher une chaine",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey)),
      ),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () => dynamicSearch()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: search ? searchAppBar() : defaultAppBar(),
      body: Container(
        color: Color(0xff262626),
        width: MediaQuery.of(context).size.width,
        height: 850,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  " Recherche par categories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
                      Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        height: MediaQuery.of(context).size.height/11,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                           border: Border.all(
                                color: Color.fromRGBO(59, 59, 60, 1),
                                width: 2
                              )
                        ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                              child: Text("Mes Films",
                                              style: TextStyle(
                                                color: Colors.white,
                                                
                                              ),
                                              ),
                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                  items: this._dropDownMenuItems,
                                  dropdownColor: Colors.black,
                                  hint: Text(
                                    _btnSelectedVAl,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      _btnSelectedVAl = newValue;
                                    });
                                  }
                                  ),
                                ),
                              ],
                            ),
                          ),
                    ),
                Expanded(
                    child: Container(
                    child: ListView(      
                       children: [

                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                     
                                     height: MediaQuery.of(context).size.height/2.8,
                                     width: MediaQuery.of(context).size.width/2.6,
       
                                     child:Column(
                                       children: [
                                         Expanded(
                                       flex: 3,
                                       child: Container(
                                           decoration: BoxDecoration(
                                       color: Colors.red,
                                      image:DecorationImage(image: AssetImage("images/anime1.jpg"), fit: BoxFit.cover),
                                         borderRadius: BorderRadius.only(
                                             topLeft: Radius.circular(10),
                                             topRight: Radius.circular(10),
                                           ),
                                           
                                     ),
                                     ),
                                         ),
                                       Expanded(
                                         flex: 1,
                                         child: Container(
                                           width: MediaQuery.of(context).size.width,
                                                   decoration: BoxDecoration(
                                                      
                                       color: Color.fromRGBO(59, 59, 60, 1),
                                         borderRadius: BorderRadius.only(
                                             bottomLeft: Radius.circular(10),
                                             bottomRight: Radius.circular(10),
                                           ),
                                           
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("My Hero Academia",
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 18
                                       ),
                                       ),
                                     ),
                                         )
                                         )
                                       ],
                                     )
                                    
                                     ),
                                      ),   
                                      
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                     
                                       height: MediaQuery.of(context).size.height/2.8,
                                     width: MediaQuery.of(context).size.width/2.6,
                                     child:Column(
                                       children: [
                                         Expanded(
                                       flex: 3,
                                       child: Container(
                                           decoration: BoxDecoration(
                                       color: Colors.red,
                                      image:DecorationImage(image: AssetImage("images/anime2.jpg"), fit: BoxFit.cover),
                                         borderRadius: BorderRadius.only(
                                             topLeft: Radius.circular(10),
                                             topRight: Radius.circular(10),
                                           ),
                                           
                                     ),
                                     ),
                                         ),
                                       Expanded(
                                         flex: 1,
                                         child: Container(
                                           width: MediaQuery.of(context).size.width,
                                                   decoration: BoxDecoration(
                                                      
                                       color: Color.fromRGBO(59, 59, 60, 1),
                                         borderRadius: BorderRadius.only(
                                             bottomLeft: Radius.circular(10),
                                             bottomRight: Radius.circular(10),
                                           ),
                                           
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Sho",
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 18
                                       ),
                                       ),
                                     ),
                                         )
                                         )
                                       ],
                                     )
                                    
                                     ),
                                      ),
                                              
                                   
                                    
                                 ],
                               ),

                                Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                     
                                     height: MediaQuery.of(context).size.height/2.8,
                                     width: MediaQuery.of(context).size.width/2.6,
       
                                     child:Column(
                                       children: [
                                         Expanded(
                                       flex: 3,
                                       child: Container(
                                           decoration: BoxDecoration(
                                       color: Colors.red,
                                      image:DecorationImage(image: AssetImage("images/anime3.jpg"), fit: BoxFit.cover),
                                         borderRadius: BorderRadius.only(
                                             topLeft: Radius.circular(10),
                                             topRight: Radius.circular(10),
                                           ),
                                           
                                     ),
                                     ),
                                         ),
                                       Expanded(
                                         flex: 1,
                                         child: Container(
                                           width: MediaQuery.of(context).size.width,
                                                   decoration: BoxDecoration(
                                                      
                                       color: Color.fromRGBO(59, 59, 60, 1),
                                         borderRadius: BorderRadius.only(
                                             bottomLeft: Radius.circular(10),
                                             bottomRight: Radius.circular(10),
                                           ),
                                           
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("Attaques des titans",
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 18
                                       ),
                                       ),
                                     ),
                                         )
                                         )
                                       ],
                                     )
                                    
                                     ),
                                      ),
                                         
                                      
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                     
                                     height: MediaQuery.of(context).size.height/2.8,
                                     width: MediaQuery.of(context).size.width/2.6,
                                     child:Column(
                                       children: [
                                         Expanded(
                                       flex: 3,
                                       child: Container(
                                           decoration: BoxDecoration(
                                       color: Colors.red,
                                      image:DecorationImage(image: AssetImage("images/anime4.jpg"), fit: BoxFit.cover),
                                         borderRadius: BorderRadius.only(
                                             topLeft: Radius.circular(10),
                                             topRight: Radius.circular(10),
                                           ),
                                           
                                     ),
                                     ),
                                         ),
                                       Expanded(
                                         flex: 1,
                                         child: Container(
                                           width: MediaQuery.of(context).size.width,
                                                   decoration: BoxDecoration(
                                                      
                                       color: Color.fromRGBO(59, 59, 60, 1),
                                         borderRadius: BorderRadius.only(
                                             bottomLeft: Radius.circular(10),
                                             bottomRight: Radius.circular(10),
                                           ),
                                           
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text("The sevens",
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 18
                                       ),
                                       ),
                                     ),
                                         )
                                         )
                                       ],
                                     )
                                    
                                     ),
                                      ),
                                          
                                   
                                    
                                 ],
                               ),


                             


                               
                               
                             
                              
                   
                  
                     
                                 
                     
                                         
                               
                        
                          
                                
                  
                    
                     
                      
                     
                                
                              
                                 Container(
                                   width: MediaQuery.of(context).size.width,
                                  // color: Color.fromRGBO(59, 59, 60, 1),
                                   child: Column(
                                     children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                   
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(   

                            width: MediaQuery.of(context).size.width/2,
                          child: Column(
                            children: [
                              Container(
                              height: 70,
                              width: 100,
                               child: Icon(Icons.tv, color: Colors.red, size: 70,)),
                                        
                                    
                                        SizedBox(height: 25,),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/bbf.png"))
                        ),
                        
                                       
                                        
                                        ),
                                    
                            ],
                          ),
                        ),
                      ),
                    ),
                                      ],
                                    ),
                             
                                 SizedBox(
                                   height: 20,
                                 ),
                                  
                              
                                
                                     ],
                                   ),
                                 ),
                               
                              ],
                            )
        ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

