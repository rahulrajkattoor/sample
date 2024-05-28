import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contacts.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List<Contact> contacts = [];
  TextEditingController Name_controller = TextEditingController();
  TextEditingController Phone_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview ui"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "name"),
              controller: Name_controller,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Phone number"),
              controller: Phone_controller,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  String name = Name_controller.text.trim();
                  String phone = Phone_controller.text.trim();
                  if (name.isNotEmpty && phone.isNotEmpty) {
                  setState(() {
                    contacts.add(Contact(name: name, phone: phone));
                    Name_controller.clear();
                    Phone_controller.clear();
                  });
                  }
                },
                child: Text("ADD")),
            Expanded(
                child: ListView.builder(
                    itemCount: contacts.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(contacts[index].name),
                          subtitle: Text(contacts[index].phone),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
