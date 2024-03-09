import 'package:get/get.dart';
import 'package:sample/HTTP%20Api/Service/http%20service.dart';

class ProductController extends GetxController{
  RxBool isLoading=true.obs;///loading is now observable
  var productList=[].obs;
  @override
  void onInit(){
    loadProducts();///what shouid happen when the app is loaded
    super.onInit();
  }
  void loadProducts()async{
    try{
      isLoading (true);
      var product=await HttpService.fetchProducts();///fetch the list of products from http class
      if(product!=null){
        productList.value=product;///now the list having the value and it is observable too
      }
    }finally{
      isLoading(false);
    }
  }
}