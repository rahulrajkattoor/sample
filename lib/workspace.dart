import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: list(),
    debugShowCheckedModeBanner: false,));
}

class list extends StatelessWidget {
  var icon = [
    "assets/icons/instagram.png",
    "assets/icons/instagram.png",
    "assets/icons/instagram.png",
    "assets/icons/instagram.png"
  ];
  var text = ["Tudo one", "Tudo two", "Tudo three", "Tudo four"];
  var title = ["asd123", "asd123", "asd123", "asd123"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange,
          title: Center(child: const Text(
            "Bsp Listview", style: TextStyle(color: Colors.black),
          ),), actions: [
            Icon(Icons.notes, color: Colors.black,)
          ],),
        body: ListView.separated(itemBuilder: (context, intex) {
          return Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 10),
                      child: Image(image: AssetImage(icon[intex]),
                        height: 80,
                        width: 80,),),
                    Column(
                      children: [
                        Text(text[intex]),
                        Text(title[intex]),
                        Padding(padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            onPressed: () {}, style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange)
                            , child: Row(
                            children: [
                              Icon(Icons.star),
                              Padding(padding: const EdgeInsets.only(left: 20),
                                child: Text('0,0'),)
                            ],
                          ),),

                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 40, left: 20),
                      child: ElevatedButton(onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: Row(children: [
                          Icon(Icons.bike_scooter),
                          Padding(padding: EdgeInsets.only(left: 20),
                          child: Text('0,00kms'),)
                        ],),),),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          color: Colors.yellow,
                          child: Image(image: AssetImage("assets/icons/facebook.png"),
                          height: 5,
                          width: 5,
                          color: Colors.orange,),
                        ),
                        Column(
                          children: [
                            Text("Address"),
                            Column(
                              children: [Text('1600 Amphitheatre pkwy mountain view ,CA'),
                              Text('94043,USA')],
                            )
                          ],
                        )
                      ],
                    )
                  ],

                )
              ],
            ),

          );
        },
            separatorBuilder: (context, intex) {
          return Divider(
            thickness: 5,
            color: Colors.grey,
          );
            }, itemCount:4)

    );
  }

}