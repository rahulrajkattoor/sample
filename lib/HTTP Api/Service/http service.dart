
import 'package:http/http.dart'as http;

import '../Product model.dart';

class HttpService{
  static Future<List<Product>>fetchProducts()async{
    var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode==200){
      var data =response.body;
      return productFromJson(data);
    }else{
      throw Exception();
    }
  }
}