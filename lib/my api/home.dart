import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/my%20api/post%20service.dart';
import 'package:sample/my%20api/post.dart';
void main(){
  runApp(MaterialApp(home: home(),));
}
class home extends StatefulWidget{
  home({Key?key}):super(key: key);
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Post>?posts;
  var isLoaded=false;

  @override
  void initState() {
    super.initState();
    getData();
  }
  getData()async{
    posts=await RemoteService().getPosts();
    if(posts !=null){
      setState(() {
        isLoaded=true;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("post api"),),
      body: Visibility(visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
            itemBuilder: (context,index){
          return Container(
            child: Row(
              children: [
                Container(height: 50,width: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey[300]),
                ),
                SizedBox(height: 16,),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(posts![index].title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,
                        ),),
                      Text(posts![index].body,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );

        }),
        replacement: Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}


