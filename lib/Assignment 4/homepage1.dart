import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: home2(),
  debugShowCheckedModeBanner: false,));
}
class home2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown[300],),
      body: Stack(
        children: [
          Container(
            color: Colors.brown[300],
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_back_outlined,color: Colors.white,),
                    SizedBox(width: 180,),
                    Text("Living Room",style: TextStyle(color: Colors.white,fontSize: 15),),
                    SizedBox(width: 150),
                    Icon(Icons.settings,color: Colors.white,)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Container(color: Colors.white,height: 75,width: 500,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                         Text("25°C"),
                          SizedBox(width: 30,),
                          Text("Temparature")
                        ],
                      ),
                      
                    ),
                     Column(
                        children: [
                         Padding(padding:EdgeInsets.only(top: 8),
                           child:Row(
                           children: [
                             SizedBox(width: 90,),
                             Icon(Icons.water_drop_outlined),
                             Text("57°C")
                           ],
                         ),),

                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text("humidity"),
                          )
                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100,top: 9),
                      child: Column(
                        children: [
                         Row(
                            children: [
                              Icon(Icons.light),
                              Text("80%")
                            ],
                          ),
                          SizedBox(width: 20,),
                          Text("Lighting")
                        ],

                        
                        
                      ),
                    )
                   
                    
                    


                  ],
                ),)),
          )
        ],
      ),
    );
  }

}
