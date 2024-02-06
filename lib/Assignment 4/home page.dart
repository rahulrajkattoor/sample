

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 void main(){
   runApp(MaterialApp(home: home1(),
   debugShowCheckedModeBanner: false,));
 }
class home1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(backgroundColor: Colors.brown[300],),
      body: Stack(
        children: [
          Container(color: Colors.brown[300],
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.menu,color: Colors.white,),
                    SizedBox(width: 150,),
                    Text("Control Panel",style: TextStyle(color: Colors.white,fontSize: 15),),
                    SizedBox(width: 150,),
                    Icon(Icons.notifications_outlined,color: Colors.white,)
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 45,width: 120,),
                        Image(image: AssetImage("assets/icons/Google-Noto-Emoji-Travel-Places-42674-cloud-with-lightning.512.png"),height: 30,width: 30,),
                        Text("Lightning",style: TextStyle(color: Colors.white),)
                      ],
                      
                    ),
                    Column(
                      children: [
                        SizedBox(height: 45,width: 210,),
                        Text("19°C",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text("Temparature",style: TextStyle(color: Colors.white),)
                      ],
                    ), Column(
                      children: [
                        SizedBox(height: 45,width: 150,),
                        Text("25°C",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text("Temparature",style: TextStyle(color: Colors.white),)
                      ],
                    ),

                  ],
                )
              ],
            ),

          ),
          Padding(padding:EdgeInsets.only(top: 150),
              child:ClipRRect(borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Container(height: 100,color: Colors.black12,
                          child: Row(
                            children: [
                              SizedBox(height: 20,width: 30,),
                              Icon(Icons.power,size: 30,),
                              Text("29.5kwh"),
                              SizedBox(width: 200,),
                              Image(image: AssetImage("assets/icons/42689-high-voltage-icon.png"),height: 30,width: 30,),
                              Text("303kwh")

                            ],

                          ),
                        ),
                      ),
                  ),

                ],
              ),

            ),
          )),
          Padding(padding:EdgeInsets.only(top: 300),
              child:ClipRRect(borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.black12,
              height: 400,
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left:15,top: 10),
                        child: Text("Scenes",style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 350,height: 10,),
                      Icon(Icons.add)
                      
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                              child: Container(color: Colors.black12,height: 100,width: 100,
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.home),
                                  Text("home")
                                ],
                              ),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                            child: Container(color: Colors.black12,height: 100,width: 100,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.door_front_door_outlined),
                                Text("room")
                              ],
                            ),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                            child: Container(color: Colors.black12,height: 100,width: 100,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.nights_stay_outlined),
                                Text("sleep")
                              ],
                            ),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                            child: Container(color: Colors.black12,height: 100,width: 100,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.alarm_sharp),
                                Text("set up"),

                              ],
                            ),)),
                      ),



                ]


              ),
                  homeui1()

              ])
            ),
          ),



    )],
    ));
  }

  homeui1() {
    return InkWell(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text("Rooms",style: TextStyle(fontSize: 20),),
                SizedBox(width: 350,),
                Icon(Icons.add),

              ],
            ),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 110,width: 250,
                  child:FittedBox(
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/icons/download (2).jpeg"),height: 110,width: 300,),
                        Text("Living Room")
                      ],
                    ),
                  )
                ),
              ),
              ClipRRect(borderRadius: BorderRadius.circular(20),
                  child:Container(
                  height: 110,width: 250,
                  child:FittedBox(
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/icons/room 1.jpg"),height: 110,width: 300,),
                        Text("Bedroom")
                      ],
                    ),
                  )
              ))
            ],
          )
        ],

      ),

     );
  }

}