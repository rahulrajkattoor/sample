
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Sqflite%20database/SQL%20helper.dart';
import 'package:sample/Sqflite%20database/sql%20login.dart';
void main(){
  runApp(MaterialApp(home: Registration(),));
}
class Registration extends StatefulWidget{
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  GlobalKey<FormState>key=GlobalKey();
  @override
  final name=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  final cmpassword=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Registration Form',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(key: key,
            child: Column(
              children: [
                SizedBox(height: 50,),
                TextFormField(
                  validator: (name){
                    if(name!.isEmpty){
                      return "name is required";
                    }
                  },
                  controller: name,
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),),
                      hintText: 'Name'
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  validator: (Email){
                    if(Email!.isEmpty&&!Email.contains('@')&&!Email.contains('.')){
                      return "enter valid mail";
                    }
                  },
                  controller: email,
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),),
                      hintText: 'Email'
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return "enter valid passwod";
                    } else {
                      return null;
                    }
                  },
                  controller: password,
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),),
                      hintText: 'Password'
                  ),
                ),
                TextFormField(
                  validator: (confirmpassword) {
                    if (confirmpassword!.isEmpty || confirmpassword.length < 8) {
                      return "enter confirm passwod";
                    } else if(cmpassword.text!=cmpassword.text){
                      return "password mismatch";
        
                    }
        
        
                  },
                  controller: cmpassword,
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),),
                      hintText: 'Confirm Password'
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () async {
                  final valid=key.currentState!.validate();
                  if(valid){
                    String umail=email.text;
                    var data=await sqlHelper.userFound(umail);
                    if(data!.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("user already existed")));
                    }
                    else{
                       addDatabase(name.text,email.text,password.text);
                    }
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(action: SnackBarAction(label: "UNDO",onPressed: (){
        
                    },), content: Text("Invalid username / password"),));
                  }
        
                }, child: Text('Register')),
                SizedBox(height: 10),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) =>sqllogin() ));
                }, child:Text('Do you have registred then LogIn here. '))
              ],
            ),
          ),
        ),
      ),
    );
  }
  void addDatabase( String name, String email, String password)async{
    var id=await sqlHelper.addDatabase(name,email,password);
    if(id!=null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>sqllogin()));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Registration completed')));
    //refreshData();
  }
}