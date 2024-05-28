import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget{
  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  List allResults=[];
  List _resultlist=[];
  final TextEditingController _seearchController=TextEditingController();
  searchResultList(){
    var showResult=[];
    if(_seearchController.text!='')
    {
      for(var clientSnapShot in allResults){
        var name=clientSnapShot['name'].toString().toLowerCase();
        if(name.contains(_seearchController.text.toLowerCase())){
          showResult.add(clientSnapShot);
        }
      }
    }
    else{
      showResult=List.from(allResults);
    }
    setState(() {
      _resultlist=showResult;
    });
  }
  getClientStream()async{
    var data=await FirebaseFirestore.instance.collection('user').orderBy('name').get();
    setState(() {
      allResults=data.docs;
    });
    searchResultList();
  }

  @override
  void initState() {
    getClientStream();
    _seearchController.addListener(_onSearchChanched);
    super.initState();
  }
  _onSearchChanched(){
    print(_seearchController.text);
    searchResultList();
  }
  @override
  void dispose() {
    _seearchController.removeListener(_onSearchChanched);
    _seearchController.dispose();
    super.dispose();
  }
  @override
  void didChangeDependencies() {
    getClientStream();
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: CupertinoSearchTextField(
controller: _seearchController,
       ),
     ),
     body: ListView.builder(itemCount: _resultlist.length,itemBuilder: (context,index){
       return ListTile(
         title: Text(_resultlist[index]['name']),

       );
     }),
   );
  }
}