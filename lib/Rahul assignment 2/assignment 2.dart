import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: assignment(),
    debugShowCheckedModeBanner: false,));
}
class assignment extends StatefulWidget{
  @override
  State<assignment> createState() => _assignmentState();
}

class _assignmentState extends State<assignment> {

var title=["achu","raju","sheeja","afin","Riya","Adhith","Athul","Rajesh","kiran","Hari"];

var subtitle=["Have a good day","Nice day","Good morning","welcome","Hi","Hello","Good evening","Goodmorning","hello","hi"];
var trailing=["Tuseday","Today","Yesterday","28 jan","30 jan","Today","yesterday","24 march","25 jun","yesterday"];
var screen=["Hi","Hi","Hi","Hi","Hi","Hi","Hi","Hi","HI"

  
];
int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Conversations",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
              expandedHeight: 150,
              actions: [

                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.add,color: Colors.pinkAccent,),
                      Text("Add")
                    ],

                  )),


                ),



              ],
              flexibleSpace: ListView(
                children: [
                  Container(
                   padding: EdgeInsets.only(left: 30,right: 30,top: 70),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_sharp),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        hintText: "Search"

                      ),
                    ),
                  ),

        ],
              ),

            ),
            SliverList(delegate: SliverChildBuilderDelegate((context,index){
              return ExpansionTile(title: Text(title[index]),
              subtitle: Text(subtitle[index]),
              trailing: Text(trailing[index]),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Custom-Icon-Design-Pretty-Office-2-Man.256.png"),),

              children: [
                ListTile(
                  title: Text(screen[index]),
                  ),
                
              ],);

    },childCount: 9)
            )],
        ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[300],
        currentIndex: index,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (tapindex){
          setState(() {
            index = tapindex;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.wifi_channel),label: "Channels"),
        BottomNavigationBarItem(icon: Icon(Icons.perm_contact_cal_rounded),label: "Account")
      ],),

    );
  }
}