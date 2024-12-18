import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Sql%20data%20base%20login/sqfl%20helper.dart';
void main(){
  runApp(MaterialApp(home: mainsql(),debugShowCheckedModeBanner: false,));
}
class mainsql extends StatefulWidget {
  @override
  State<mainsql> createState() => _mainsqlState();
}

class _mainsqlState extends State<mainsql> {
  bool isloading = true;
  List<Map<String,dynamic>>note_from_db=[];
  @override
  void initState(){
    refreshdata();
    super.initState();
  }
  void refreshdata() async{
    final datas=await SQLHelper.readNotes();
    setState(() {
      note_from_db=datas;
      isloading=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mynotes"),
      ),
      body: isloading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
        itemCount: note_from_db.length,
          itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text("${note_from_db[index]['title']}"),
                  subtitle: Text("${note_from_db[index]['note']}"),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(onPressed: () {
                          showform(note_from_db[index]['id']);

                        }, icon: Icon(Icons.edit)),
                        IconButton(onPressed: () {
                          deleteNote(note_from_db[index]['id']);


                        }, icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                ),
              );
            }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showform(null),
        child: Icon(Icons.add),
      ),
    );
  }
final title=TextEditingController();
  final note=TextEditingController();
  void showform(int? id) async {
    if(id!=null){
      final existingNote=note_from_db.firstWhere((note) => note['id']==id);
      title.text=existingNote['title'];
      note.text=existingNote['note'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => Container(
              padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 120),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: title,
                    decoration: InputDecoration(
                        hintText: "Title", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: note,
                    decoration: InputDecoration(
                        hintText: "Enter note", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: () async{
                    if(id==null){
                      await addnote();
                    }
                    if(id!=null){
                      await updateNote(id);
                    }

                    title.text="";
                    note.text="";
                    Navigator.of(context).pop();
                  }, child: Text(id==null ?'ADD NOTE':"UPDATE"))
                ],
              ),
            ));

  }

 Future addnote() async{
    await SQLHelper.createNote(title.text, note.text);
    refreshdata();
 }
  Future<void>updateNote(int id) async{
    await SQLHelper.updateNote(id, title.text, note.text);
    refreshdata();
  }
  Future deleteNote(int id) async{
    await SQLHelper.deleteNote(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Note deleted')));
    refreshdata();
  }
 }

