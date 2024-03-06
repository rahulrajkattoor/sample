import 'dart:math';



import 'package:flutter/cupertino.dart';

import 'Movie.dart';

final List<Movie>data=List.generate(100, (index) =>Movie(title: "movie$index", time: "${Random().nextInt(100)+60}minute"));

class MovieProvider with ChangeNotifier{
  final List<Movie>movieHome=data;

  List<Movie> get movies=>movieHome;//retrive all the movie
  final List<Movie>wishList=[];//fetch list from wishlist
  List<Movie>get wishmovie=>wishList;
  void addToList(Movie movie){
    wishList.add(movie);
    notifyListeners();
  }
  void removeFromList(Movie movie){
    wishList.remove(movie);
    notifyListeners();
  }
}