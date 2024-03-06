import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/State%20Managment/wish%20list.dart';

import 'Provider.dart';
void main(){
  runApp(ChangeNotifierProvider(create: (_)=>MovieProvider(),
  child: MaterialApp(home: home(),),));
}
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var movies=context.watch<MovieProvider>().movies;
    var movieList=context.watch<MovieProvider>().wishmovie;
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body:Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            ElevatedButton.icon(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WishList()));
            }, icon: Icon(Icons.favorite),
            label: Text("GO TO WiskList${movieList.length}"),
            ),SizedBox(
              height: 20,
            ),
            Expanded(child: Center(
              child: Padding(padding: EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: movies.length,
                  itemBuilder: (context,index){
                  var movie=movies[index];
                return Card(
                  key: ValueKey(movie.title),
                  child: ListTile(
                    title: Text(movie.title),
                    subtitle: Text(movie.time??"No time"),
                    trailing: IconButton(
                      icon: Icon(Icons.favorite),
                      color: movieList.contains(movie)
                        ?Colors.red
                          :Colors.blue,
                      onPressed: () {
                        if(!movieList.contains(movie)){
                          context.read<MovieProvider>().addToList(movie);
                        }else {
                          context.read<MovieProvider>().removeFromList(movie);
                        }
                    },

                    ),
                  ),
                );
              }),),
            ))
          ],
        ),
      )
    );
  }

}