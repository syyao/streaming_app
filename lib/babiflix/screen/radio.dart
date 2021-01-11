import 'package:flutter/material.dart';


class RadioCate extends StatefulWidget {
  @override
  _RadioCateState createState() => _RadioCateState();
}

class _RadioCateState extends State<RadioCate> {
  // avant le override 

static const menuItems = <String>[
     "Afrique"
    "Cote d'ivoire",
    'Togo',
    'Nigeria',
    'Nigere',
    'Ghana',
    'Benin',
    'Afrique du Sud',

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
  String _btnSelectedVAl = "Cote d'ivoire";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Color(0Xff191919),
       appBar: AppBar(
         title:       Padding(
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
        centerTitle: true,
        backgroundColor: Color(0Xff191919),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed:(){})
        ],
       ),
          body:  SafeArea(
              child: Column(
    
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
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
                                              child: Text("Mes Radios",
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
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed("Chaine");
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index){
                              return     Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height/11,
                                  width: MediaQuery.of(context).size.width/1.5,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(59, 59, 60, 1),
                                     borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: ListTile(
                                      trailing: IconButton(icon: Icon(Icons.play_circle_filled, color: Colors.red,), onPressed: (){}),
                                      leading: Container(
                                          height: 40,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/tv3.jpg"), fit: BoxFit.cover),
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.red,
                                          ),
                                        ),
                                              title:    Container(
                                                child: Text("Radio Djam",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  
                                                ),
                                                ),
                                              ),
                                          
                                             
                                             ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      )
                          
                ],
              ),
            ),
          
    );
   
  }
}
