import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/State%20Managment/Provider.dart';

class WishList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var wishlist=context.watch<MovieProvider>().wishmovie;
    return Scaffold(
      appBar: AppBar(title: Text("My wishlist(${wishlist.length})"),),
      body: ListView.builder(
        itemCount: wishlist.length,
          itemBuilder: (context,index){
          final movie=wishlist[index];
        return Card(
          key: ValueKey(movie.title),
          child: ListTile(
            title: Text(movie.title),
            trailing: TextButton(
              onPressed: (){
                context.read<MovieProvider>().removeFromList(movie);
              },child: Text("Remove"),
            ),
          ),
        );
      }),
    );
  }

}