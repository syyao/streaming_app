
// import 'package:baby_flix/babiflix/screen/suggession.dart';
// import 'package:flutter/material.dart';
// //RECHERCHE PAR NOM DES PARTENAIRES
// class DataSearch extends SearchDelegate<String>{
//   final partenaire=[
//    "King cash,",
//    "Sophia Market,",
//    "chez tantie ",
//    "Chez Pateo",
//    "la boulangere",
//    "Sucre sale",
//   ];

//   final recentpartenaire=[
//      "King cash,",
//    "Sophia Market,",
//    "chez tantie ",
//   ];


// @override
// List<Widget> buildActions(BuildContext context){
// return [IconButton(icon: Icon(Icons.clear), onPressed: (){ 
//   query='';
// })];
// }

// @override
// Widget buildLeading(BuildContext context){
//   return IconButton(icon: AnimatedIcon(
//    icon: AnimatedIcons.menu_arrow, progress: transitionAnimation,), 
//    onPressed: (){
//      Navigator.pop(context);
//    });
// }
// // @override
// // Widget buildResults(
// //   BuildContext context){
// //      // final provider = Provider.of<MarkertService>(context,);
     
// //    return  Container(
// //      color: Colors.red,
// //      child: Details(),
// //    );
// //   //   Expanded(
// //   //                     child: Container(
// //   //                       color: Colors.white,
// //   //                       child: Padding(
// //   //                         padding: const EdgeInsets.all(8.0),
// //   //                         child: GridView.builder(
// //   //                         itemCount: provider.items.length,
// //   //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //   //                           crossAxisCount: 2,
                           
// //   //                           crossAxisSpacing: 10,
                            
// //   //                           mainAxisSpacing: 10), 
// //   //                         itemBuilder: (ctx, i){
// //   //                           return ChangeNotifierProvider.value( 
// //   //                             value: provider.items[i],
// //   //                             child: Details(),
// //   //                           );
// //   //                         }
                          
// //   //                         ),
// //   //                       ),
// //   //                     ),
// //   //                   );
// // }

//  @override
//   Widget buildResults(BuildContext context) {
//     // show some result based on the selection
//     return Center(
//       child: Text(query),
//     );
//   }



// @override
// Widget buildSuggestions(BuildContext context){
  

//    final suggestionList= query.isEmpty?partenaire: partenaire.where((p) => partenaire.contains(query)).toList();

//    return ListView.builder(itemBuilder: (context, index)=>ListTile(
//      onTap: (){
       
//        Navigator.push(context, 
//        MaterialPageRoute(builder: (context){
//          return Suggession(
//          );
//        })
//        );
       
//      },
//      leading: Icon(Icons.remove_red_eye),
//      title: RichText(
//        text:TextSpan(text: suggestionList[index].namePartenaire.substring(0, query.length),
//        style: TextStyle(
//          color: Colors.black, fontWeight: FontWeight.bold),
//          children: [
//            TextSpan(
//              text:suggestionList[index]..substring(query.length),
//              style: TextStyle(color:Colors.grey)
//            )
//          ]
//        )
//        ) ,
//      ),
   
//      itemCount: suggestionList.length,
//      );
// }
// }

