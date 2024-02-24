import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatpage extends StatelessWidget{
  var name=["Rahul","Team padi","Rameez","Rdj","jack sparrow","Rio family","Boss","Alexander","Brother","Teddy","unknown"];
  var sub=["Hi","Frnd send a video","How are you","Welcome to Tony stark industries","welcome to see","Nice to meet you","your work is done","Hey buddy","Hi bro","HI","Who are you"];
  var image=["assets/icons/indoor-picture-handsome guy.jpg","assets/icons/team padi.png","assets/icons/whatsapp unknown image.jpg","assets/icons/RDJ.jpg",
  "assets/icons/Jack sparrow.jpg","assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png","assets/icons/Custom-Icon-Design-Pretty-Office-2-Man.256.png",
  "assets/icons/Man-Fitness-Wallpaper-HD.jpg","assets/icons/2150991457.jpg","assets/icons/animal-wildlife-word-with-giraffe-graphic.jpg","assets/icons/whatsapp unknown image.jpg"];
  var trailing=["Today","Yesterday","1/1/2024","2/2/2024","Today","8/2/2025","Yesterday","10/4/2024","Today","Yesterday","12/2/2023"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Container(height: 70,
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(sub[index]),
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),radius: 25,),
            trailing: Text(trailing[index]),

          ),

        );
      },itemCount: 11,),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {  },
      child: Icon(Icons.message),),
    );
  }

}