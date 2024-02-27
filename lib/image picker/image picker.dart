






import 'dart:html';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
void main(){
  runApp(MaterialApp(home: imagepicker(),));
}
class imagepicker extends StatefulWidget{
  const imagepicker ({Key?key}):super(key: key);
  @override
  State<imagepicker> createState() => _imagepickerState();
}

class _imagepickerState extends State<imagepicker> {
   File? selectedImage;

  get returnedImage => 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Picker Example"),
        ),
        body: Center(
          child: Column(
            children: [
              MaterialButton(
                  color: Colors.blue,
                  child: const Text(
                      "Pick Image from Gallery",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold
                      )
                  ),
                  onPressed: () {

                  }
              ),
              SizedBox(height: 20,),
              MaterialButton(
                  color: Colors.blue,
                  child: const Text(
                      "Pick Image from Camera",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold
                      )
                  ),
                  onPressed: () {
                    pickimageFromGallery();
                  }
              ),
              const SizedBox(height: 20,),
              selectedImage !=null ? Image.file(selectedImage!): const Text("please selecct an image ")
            ],
          ),
        )
    );
  }
  Future pickimageFromGallery() async{
   final returnedImage= await ImagePicker().pickImage(source: ImageSource.camera);
   setState(() {
      selectedImage=File(returnedImage!.path ) ;
    });


}}
